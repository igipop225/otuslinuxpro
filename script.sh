#!/bin/bash

# =============================================================================
# CONFIGURATION
# =============================================================================

# Базовые настройки
LOG_DIR="/var/log/nginx"                    # Директория с логами
ACCESS_LOG="${LOG_DIR}/access.log"          # Access log файл
ERROR_LOG="${LOG_DIR}/error.log"            # Error log файл
LOCK_FILE="/tmp/log_analyzer.lock"          # Файл блокировки
LAST_RUN_FILE="/tmp/log_analyzer.lastrun"   # Файл времени последнего запуска
REPORT_FILE="/tmp/web_report.txt"           # Временный файл отчета

# Настройки почты
MAIL_TO="admin@example.com"                 # Получатель отчета
MAIL_SUBJECT="Hourly Web Server Report"     # Тема письма

# Настройки отчета
TOP_ENTRIES=10                              # Сколько топ-записей показывать
LOG_PATTERNS=("*.log" "*.log.*")            # Паттерны для поиска лог-файлов

# =============================================================================
# TRAP FUNCTIONS - функции для обработки сигналов
# =============================================================================

# Функция очистки при нормальном или аварийном завершении
cleanup() {
    local exit_code=$?
    
    # Удаляем lock-файл, если он существует
    if [[ -f "$LOCK_FILE" ]]; then
        rm -f "$LOCK_FILE"
        log_message "Lock file removed"
    fi
    
    # Логируем завершение скрипта
    if [[ $exit_code -eq 0 ]]; then
        log_message "Script completed successfully"
    else
        log_message "Script failed with exit code: $exit_code"
    fi
    
    exit $exit_code
}

# Функция для обработки сигнала прерывания (Ctrl+C)
interrupt_handler() {
    echo -e "\nScript interrupted by user"
    exit 1
}

# Устанавливаем обработчики сигналов
trap cleanup EXIT          # При нормальном завершении
trap interrupt_handler INT # При прерывании (Ctrl+C)
trap cleanup TERM         # При получении SIGTERM

# =============================================================================
# HELPER FUNCTIONS - вспомогательные функции
# =============================================================================

# Функция логирования
log_message() {
    local message="$1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $message"
}

# Функция проверки зависимостей
check_dependencies() {
    local deps=("awk" "sort" "uniq" "sed" "find" "date" "mail")
    local missing=()
    
    for cmd in "${deps[@]}"; do
        if ! command -v "$cmd" &> /dev/null; then
            missing+=("$cmd")
        fi
    done
    
    if [[ ${#missing[@]} -gt 0 ]]; then
        echo "Missing dependencies: ${missing[*]}"
        exit 1
    fi
}

# Функция проверки lock-файла
check_lock() {
    if [[ -f "$LOCK_FILE" ]]; then
        local pid=$(cat "$LOCK_FILE" 2>/dev/null)
        
        # Проверяем, существует ли процесс с таким PID
        if ps -p "$pid" > /dev/null 2>&1; then
            log_message "Script is already running (PID: $pid)"
            exit 1
        else
            # Процесс не существует, удаляем старый lock-файл
            log_message "Removing stale lock file"
            rm -f "$LOCK_FILE"
        fi
    fi
    
    # Создаем новый lock-файл
    echo $$ > "$LOCK_FILE"
    log_message "Lock file created (PID: $$)"
}

# Функция определения временного диапазона
get_time_range() {
    local current_time=$(date '+%Y-%m-%d %H:%M:%S')
    local last_run_time
    
    # Если файл последнего запуска существует, читаем время
    if [[ -f "$LAST_RUN_FILE" ]]; then
        last_run_time=$(cat "$LAST_RUN_FILE")
    else
        # Если файла нет, берем время час назад
        last_run_time=$(date -d '1 hour ago' '+%Y-%m-%d %H:%M:%S')
    fi
    
    # Сохраняем текущее время для следующего запуска
    echo "$current_time" > "$LAST_RUN_FILE"
    
    echo "$last_run_time|$current_time"
}

# Функция поиска актуальных лог-файлов
find_log_files() {
    local log_type="$1"  # "access" или "error"
    local found_files=()
    
    for pattern in "${LOG_PATTERNS[@]}"; do
        while IFS= read -r file; do
            # Проверяем, содержит ли имя файла указанный тип лога
            if [[ "$file" == *"$log_type"* ]] || [[ "$log_type" == "access" && "$file" == *"access"* ]] || \
               [[ "$log_type" == "error" && "$file" == *"error"* ]]; then
                found_files+=("$file")
            fi
        done < <(find "$LOG_DIR" -name "$pattern" -type f 2>/dev/null | sort)
    done
    
    # Если не нашли файлов по паттерну, используем стандартные имена
    if [[ ${#found_files[@]} -eq 0 ]]; then
        if [[ "$log_type" == "access" && -f "$ACCESS_LOG" ]]; then
            found_files+=("$ACCESS_LOG")
        elif [[ "$log_type" == "error" && -f "$ERROR_LOG" ]]; then
            found_files+=("$ERROR_LOG")
        fi
    fi
    
    echo "${found_files[@]}"
}

# =============================================================================
# ANALYSIS FUNCTIONS - функции анализа логов
# =============================================================================

# Функция анализа access логов за период
analyze_access_logs() {
    local start_time="$1"
    local end_time="$2"
    local access_files=($(find_log_files "access"))
    
    if [[ ${#access_files[@]} -eq 0 ]]; then
        echo "No access log files found"
        return 1
    fi
    
    log_message "Analyzing access logs from: ${access_files[*]}"
    
    # Временный файл для фильтрованных логов
    local temp_file=$(mktemp)
    
    # Объединяем и фильтруем логи по времени
    for file in "${access_files[@]}"; do
        # Используем sed для извлечения строк за указанный период
        # Предполагаем формат лога: [дата время]
        if [[ -f "$file" ]]; then
            # Простой вариант для стандартного формата Nginx
            sed -n "/${start_time//-/\\-}/,/${end_time//-/\\-}/p" "$file" 2>/dev/null >> "$temp_file"
        fi
    done
    
    # Если временный файл пуст, создаем заглушку
    if [[ ! -s "$temp_file" ]]; then
        echo "No data found for the specified period" > "$temp_file"
    fi
    
    echo "$temp_file"
}

# Функция получения топа IP адресов
get_top_ips() {
    local log_file="$1"
    
    echo "=== Top $TOP_ENTRIES IP Addresses ==="
    echo ""
    
    # Используем awk для извлечения IP (первое поле в access.log)
    # Сортируем, считаем уникальные, сортируем по количеству
    awk '{print $1}' "$log_file" | \
        sort | \
        uniq -c | \
        sort -rn | \
        head -n "$TOP_ENTRIES" | \
        awk '{printf "%-15s %s requests\n", $2, $1}'
    
    echo ""
}

# Функция получения топа URL
get_top_urls() {
    local log_file="$1"
    
    echo "=== Top $TOP_ENTRIES Requested URLs ==="
    echo ""
    
    # Извлекаем URL (обычно 7-е поле в access.log)
    # Можно настроить под конкретный формат лога
    awk '{print $7}' "$log_file" | \
        sort | \
        uniq -c | \
        sort -rn | \
        head -n "$TOP_ENTRIES" | \
        awk '{printf "%-50s %s requests\n", $2, $1}'
    
    echo ""
}

# Функция получения статистики HTTP кодов
get_http_codes() {
    local log_file="$1"
    
    echo "=== HTTP Response Codes ==="
    echo ""
    
    # Извлекаем HTTP коды (обычно 9-е поле в access.log)
    awk '{print $9}' "$log_file" | \
        grep -E '^[0-9]{3}$' | \
        sort | \
        uniq -c | \
        sort -n | \
        awk '{printf "Code %3s: %6s responses\n", $2, $1}'
    
    echo ""
}

# Функция анализа error логов
analyze_error_logs() {
    local start_time="$1"
    local end_time="$2"
    local error_files=($(find_log_files "error"))
    
    if [[ ${#error_files[@]} -eq 0 ]]; then
        echo "=== Error Logs ==="
        echo ""
        echo "No error log files found"
        echo ""
        return
    fi
    
    echo "=== Error Logs (Last Hour) ==="
    echo ""
    
    # Анализируем каждый error log файл
    for file in "${error_files[@]}"; do
        if [[ -f "$file" ]]; then
            echo "Errors from: $(basename "$file")"
            echo "----------------------------------------"
            
            # Извлекаем ошибки за указанный период
            # Формат может отличаться, здесь общий подход
            sed -n "/${start_time//-/\\-}/,/${end_time//-/\\-}/p" "$file" 2>/dev/null | \
                grep -i "error\|fail\|critical" | \
                head -n 20  # Ограничиваем вывод
            
            echo ""
        fi
    done
}

# =============================================================================
# REPORT FUNCTIONS - функции формирования отчета
# =============================================================================

# Функция формирования заголовка отчета
create_report_header() {
    local start_time="$1"
    local end_time="$2"
    
    echo "================================================"
    echo "        HOURLY WEB SERVER REPORT"
    echo "================================================"
    echo ""
    echo "Time Range: $start_time - $end_time"
    echo "Report Generated: $(date '+%Y-%m-%d %H:%M:%S')"
    echo ""
    echo "================================================"
    echo ""
}

# Функция формирования полного отчета
generate_report() {
    local start_time="$1"
    local end_time="$2"
    
    # Создаем временный файл для отчета
    > "$REPORT_FILE"
    
    # Добавляем заголовок
    create_report_header "$start_time" "$end_time" >> "$REPORT_FILE"
    
    # Анализируем access логи
    local access_data_file=$(analyze_access_logs "$start_time" "$end_time")
    
    if [[ -f "$access_data_file" && -s "$access_data_file" ]]; then
        # Топ IP
        get_top_ips "$access_data_file" >> "$REPORT_FILE"
        
        # Топ URL
        get_top_urls "$access_data_file" >> "$REPORT_FILE"
        
        # HTTP коды
        get_http_codes "$access_data_file" >> "$REPORT_FILE"
        
        # Удаляем временный файл
        rm -f "$access_data_file"
    else
        echo "No access log data available for analysis" >> "$REPORT_FILE"
        echo "" >> "$REPORT_FILE"
    fi
    
    # Анализируем error логи
    analyze_error_logs "$start_time" "$end_time" >> "$REPORT_FILE"
    
    # Добавляем разделитель в конец
    echo "================================================" >> "$REPORT_FILE"
    echo "End of Report" >> "$REPORT_FILE"
}

# Функция отправки отчета по почте
send_report() {
    local report_file="$1"
    
    if [[ ! -f "$report_file" ]]; then
        log_message "Report file not found: $report_file"
        return 1
    fi
    
    # Проверяем, установлен ли mail
    if ! command -v mail &> /dev/null; then
        log_message "mail command not found. Install mailutils or sendmail."
        return 1
    fi
    
    # Отправляем письмо
    mail -s "$MAIL_SUBJECT" "$MAIL_TO" < "$report_file"
    
    if [[ $? -eq 0 ]]; then
        log_message "Report sent successfully to $MAIL_TO"
    else
        log_message "Failed to send report"
        return 1
    fi
}

# =============================================================================
# MAIN SCRIPT EXECUTION
# =============================================================================

main() {
    log_message "Starting web log analyzer script"
    
    # 1. Проверяем зависимости
    check_dependencies
    
    # 2. Проверяем, не запущен ли уже скрипт
    check_lock
    
    # 3. Получаем временной диапазон
    local time_range=$(get_time_range)
    local start_time=$(echo "$time_range" | cut -d'|' -f1)
    local end_time=$(echo "$time_range" | cut -d'|' -f2)
    
    log_message "Analyzing logs from $start_time to $end_time"
    
    # 4. Генерируем отчет
    generate_report "$start_time" "$end_time"
    
    # 5. Отправляем отчет
    send_report "$REPORT_FILE"
    
    # 6. Очищаем временные файлы (кроме REPORT_FILE для отладки)
    # rm -f "$REPORT_FILE"
    
    log_message "Script execution completed"
}

# Запуск главной функции
main "$@"
