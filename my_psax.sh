#!/bin/bash
echo "  PID TTY      STAT   TIME COMMAND"
for pid in /proc/[0-9]*; do
    pid_num=$(basename "$pid")

    if [ -r "$pid/stat" ]; then
        # Читаем строку из stat
        stat_line=$(cat "$pid/stat" 2>/dev/null)

        if [ -z "$stat_line" ]; then
            continue  # Процесс завершился
        fi
        # Используем awk
        pid_num=$(echo "$stat_line" | awk '{print $1}')
        comm=$(echo "$stat_line" | awk -F'[()]' '{print $2}')
        state=$(echo "$stat_line" | awk '{print $3}')
        ppid=$(echo "$stat_line" | awk '{print $4}')
        tty_nr=$(echo "$stat_line" | awk '{print $7}')
	# Определяем TTY
        tty="?"
        if [ "$tty_nr" -ne 0 ] 2>/dev/null; then
            major=$((tty_nr >> 8))
            minor=$((tty_nr & 0xFF))

            case $major in
                4) tty="tty$minor" ;;
                136) tty="pts/$minor" ;;
                5) tty="tty" ;;
            esac
        fi

        # Время процесса
        utime=$(echo "$stat_line" | awk '{print $14}')
        stime=$(echo "$stat_line" | awk '{print $15}')
	total_seconds=$(((utime + stime) / 100))  # 100 ticks в секунде

        minutes=$((total_seconds / 60))
        seconds=$((total_seconds % 60))

        if [ $minutes -ge 60 ]; then
            hours=$((minutes / 60))
            minutes=$((minutes % 60))
            time_str=$(printf "%d:%02d" $hours $minutes)
        else
            time_str=$(printf "%d:%02d" $minutes $seconds)
        fi

        # Командная строка
        if [ -r "$pid/cmdline" ]; then
            cmdline=$(tr '\0' ' ' < "$pid/cmdline" 2>/dev/null)
            if [ -z "$cmdline" ]; then
                cmdline="[$comm]"
            fi
        else
            cmdline="[$comm]"
        fi

        # Вывод
        printf "%6s %-8s %-4s %-7s %s\n" "$pid_num" "$tty" "$state" "$time_str" "$cmdline"
    fi
done | sort -n
