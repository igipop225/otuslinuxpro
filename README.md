# Занятие 1. Обновление ядра системы
Цель домашнего задания
Научиться обновлять ядро в ОС Linux.
Описание домашнего задания
1) Запустить ВМ c Ubuntu.
2) Обновить ядро ОС на новейшую стабильную версию из mainline-репозитория.
3) Оформить отчет в README-файле в GitHub-репозитории.
# Команды и результат их выполнения:
2025-09-13 13:55:54 user: uname -r
### 6.14.0-29-generic
2025-09-13 13:59:20 user: mkdir kernel
2025-09-13 14:00:05 user: cd kernel
2025-09-14 01:20:33 user: wget https://kernel.ubuntu.com/mainline/v6.16.7/amd64/linux-headers-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb
### --2025-09-14 01:20:33--  https://kernel.ubuntu.com/mainline/v6.16.7/amd64/linux-headers-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb
### Resolving kernel.ubuntu.com (kernel.ubuntu.com)... 185.125.189.74, 185.125.189.76, 185.125.189.75
### Connecting to kernel.ubuntu.com (kernel.ubuntu.com)|185.125.189.74|:443... connected.
### HTTP request sent, awaiting response... 200 OK
### Length: 3724024 (3.6M) [application/x-debian-package]
### Saving to: ‘linux-headers-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb’
### 
### 
### 2025-09-14 01:20:34 (8.50 MB/s) - ‘linux-headers-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb’ saved [3724024/3724024]
### 
2025-09-14 01:22:01 user: wget https://kernel.ubuntu.com/mainline/v6.16.7/amd64/linux-headers-6.16.7-061607_6.16.7-061607.202509111546_all.deb
### --2025-09-14 01:22:01--  https://kernel.ubuntu.com/mainline/v6.16.7/amd64/linux-headers-6.16.7-061607_6.16.7-061607.202509111546_all.deb
### Resolving kernel.ubuntu.com (kernel.ubuntu.com)... 185.125.189.74, 185.125.189.76, 185.125.189.75
### Connecting to kernel.ubuntu.com (kernel.ubuntu.com)|185.125.189.74|:443... connected.
### HTTP request sent, awaiting response... 200 OK
### Length: 14256210 (14M) [application/x-debian-package]
### Saving to: ‘linux-headers-6.16.7-061607_6.16.7-061607.202509111546_all.deb’
### 
### 
### 2025-09-14 01:22:03 (10.8 MB/s) - ‘linux-headers-6.16.7-061607_6.16.7-061607.202509111546_all.deb’ saved [14256210/14256210]
### 
2025-09-14 01:23:08 user: wget https://kernel.ubuntu.com/mainline/v6.16.7/amd64/linux-image-unsigned-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb
### --2025-09-14 01:23:08--  https://kernel.ubuntu.com/mainline/v6.16.7/amd64/linux-image-unsigned-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb
### Resolving kernel.ubuntu.com (kernel.ubuntu.com)... 185.125.189.75, 185.125.189.76, 185.125.189.74
### Connecting to kernel.ubuntu.com (kernel.ubuntu.com)|185.125.189.75|:443... connected.
### HTTP request sent, awaiting response... 200 OK
### Length: 16066752 (15M) [application/x-debian-package]
### Saving to: ‘linux-image-unsigned-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb’
### 
### 
### 2025-09-14 01:23:10 (11.0 MB/s) - ‘linux-image-unsigned-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb’ saved [16066752/16066752]
### 
2025-09-14 01:23:35 user: wget https://kernel.ubuntu.com/mainline/v6.16.7/amd64/linux-modules-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb
### --2025-09-14 01:23:35--  https://kernel.ubuntu.com/mainline/v6.16.7/amd64/linux-modules-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb
### Resolving kernel.ubuntu.com (kernel.ubuntu.com)... 185.125.189.75, 185.125.189.76, 185.125.189.74
### Connecting to kernel.ubuntu.com (kernel.ubuntu.com)|185.125.189.75|:443... connected.
### HTTP request sent, awaiting response... 200 OK
### Length: 262256832 (250M) [application/x-debian-package]
### Saving to: ‘linux-modules-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb’
### 
### 
### 2025-09-14 01:23:58 (11.2 MB/s) - ‘linux-modules-6.16.7-061607-generic_6.16.7-061607.202509111546_amd64.deb’ saved [262256832/262256832]
### 
2025-09-14 01:27:17 user: ls -al /boot
### total 210364
### drwxr-xr-x  3 root root     4096 Sep 14 01:26 .
### drwxr-xr-x 23 root root     4096 Sep 12 22:49 ..
### -rw-r--r--  1 root root   296143 Aug 14 18:02 config-6.14.0-29-generic
### -rw-r--r--  1 root root   299533 Sep 11 18:46 config-6.16.7-061607-generic
### drwxr-xr-x  5 root root     4096 Sep 14 01:26 grub
### lrwxrwxrwx  1 root root       28 Sep 12 22:49 initrd.img -> initrd.img-6.14.0-29-generic
### -rw-r--r--  1 root root 72795668 Sep 12 23:07 initrd.img-6.14.0-29-generic
### -rw-r--r--  1 root root 90542726 Sep 14 01:26 initrd.img-6.16.7-061607-generic
### lrwxrwxrwx  1 root root       32 Sep 14 01:26 initrd.img.old -> initrd.img-6.16.7-061607-generic
### -rw-r--r--  1 root root   142796 Apr  8  2024 memtest86+ia32.bin
### -rw-r--r--  1 root root   143872 Apr  8  2024 memtest86+ia32.efi
### -rw-r--r--  1 root root   147744 Apr  8  2024 memtest86+x64.bin
### -rw-r--r--  1 root root   148992 Apr  8  2024 memtest86+x64.efi
### -rw-------  1 root root  9148044 Aug 14 18:02 System.map-6.14.0-29-generic
### -rw-------  1 root root 10127311 Sep 11 18:46 System.map-6.16.7-061607-generic
### lrwxrwxrwx  1 root root       25 Sep 12 22:49 vmlinuz -> vmlinuz-6.14.0-29-generic
### -rw-------  1 root root 15546760 Aug 14 18:08 vmlinuz-6.14.0-29-generic
### -rw-------  1 root root 16032256 Sep 11 18:46 vmlinuz-6.16.7-061607-generic
### lrwxrwxrwx  1 root root       29 Sep 14 01:26 vmlinuz.old -> vmlinuz-6.16.7-061607-generic
2025-09-14 01:28:59 user: uname -r
### 6.16.7-061607-generic
2025-09-14 01:29:21 user: sudo update-grub
### Sourcing file `/etc/default/grub'
### Generating grub configuration file ...
### Found linux image: /boot/vmlinuz-6.16.7-061607-generic
### Found initrd image: /boot/initrd.img-6.16.7-061607-generic
### Found linux image: /boot/vmlinuz-6.14.0-29-generic
### Found initrd image: /boot/initrd.img-6.14.0-29-generic
### Found memtest86+x64 image: /boot/memtest86+x64.bin
### Warning: os-prober will not be executed to detect other bootable partitions.
### Systems on them will not be added to the GRUB boot configuration.
### Check GRUB_DISABLE_OS_PROBER documentation entry.
### Adding boot menu entry for UEFI Firmware Settings ...
### done
2025-09-14 01:31:23 user: sudo grub-set-default 0
2025-09-14 01:32:07 user: uname -r
### 6.16.7-061607-generic
