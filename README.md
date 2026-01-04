Задание 8
Включить отображение меню Grub.

2026-01-04 16:34:20 root: nano /etc/default/grub
2026-01-04 16:35:26 root: update-grub
###### Sourcing file `/etc/default/grub'
###### Generating grub configuration file ...
###### Found linux image: /boot/vmlinuz-6.16.7-061607-generic
###### Found initrd image: /boot/initrd.img-6.16.7-061607-generic
###### Found linux image: /boot/vmlinuz-6.14.0-36-generic
###### Found initrd image: /boot/initrd.img-6.14.0-36-generic
###### Found memtest86+x64 image: /boot/memtest86+x64.bin
###### Warning: os-prober will not be executed to detect other bootable partitions.
###### Systems on them will not be added to the GRUB boot configuration.
###### Check GRUB_DISABLE_OS_PROBER documentation entry.
###### Adding boot menu entry for UEFI Firmware Settings ...
###### done
2026-01-04 16:35:56 root: reboot

Попасть в систему без пароля несколькими способами. - на скриншотах.
Установить систему с LVM, после чего переименовать VG.
2026-01-04 18:28:26 root: vgs
######   VG        #PV #LV #SN Attr   VSize  VFree
######   ubuntu-vg   1   1   0 wz--n- <8.25g    0 
2026-01-04 18:28:44 root: vgrename ubuntu-vg ubuntu-otus
######   Volume group "ubuntu-vg" successfully renamed to "ubuntu-otus"
root@server:/home/user# logcmd vgs
  VG          #PV #LV #SN Attr   VSize  VFree
  ubuntu-otus   1   1   0 wz--n- <8.25g    0 
root@server:/home/user# cat command_log.txt 
2026-01-04 18:28:26 root: vgs
######   VG        #PV #LV #SN Attr   VSize  VFree
######   ubuntu-vg   1   1   0 wz--n- <8.25g    0 
2026-01-04 18:28:44 root: vgrename ubuntu-vg ubuntu-otus
######   Volume group "ubuntu-vg" successfully renamed to "ubuntu-otus"
2026-01-04 18:38:29 root: vgs
######   VG          #PV #LV #SN Attr   VSize  VFree
######   ubuntu-otus   1   1   0 wz--n- <8.25g    0 
root@server:/home/user# cat command_log.txt 
2026-01-04 18:28:26 root: vgs
######   VG        #PV #LV #SN Attr   VSize  VFree
######   ubuntu-vg   1   1   0 wz--n- <8.25g    0 
2026-01-04 18:28:44 root: vgrename ubuntu-vg ubuntu-otus
######   Volume group "ubuntu-vg" successfully renamed to "ubuntu-otus"
-- reboot
2026-01-04 18:38:29 root: vgs
######   VG          #PV #LV #SN Attr   VSize  VFree
######   ubuntu-otus   1   1   0 wz--n- <8.25g    0 

