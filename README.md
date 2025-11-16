Домашнее задание 3(..-4)
На виртуальной машине с Ubuntu 24.04 и LVM.
Уменьшить том под / до 8G.
Выделить том под /home.
Выделить том под /var - сделать в mirror.
/home - сделать том для снапшотов.
Прописать монтирование в fstab. Попробовать с разными опциями и разными файловыми системами (на выбор).
Работа со снапшотами:
сгенерить файлы в /home/;
снять снапшот;
удалить часть файлов;
восстановится со снапшота.

2025-11-16 21:30:47 root: lsblk
###### NAME                      MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
###### sda                         8:0    0   10G  0 disk 
###### ├─sda1                      8:1    0    1M  0 part 
###### ├─sda2                      8:2    0  1.8G  0 part /boot
###### └─sda3                      8:3    0  8.2G  0 part 
######   └─ubuntu--vg-ubuntu--lv 252:0    0  8.2G  0 lvm  /
###### sdb                         8:16   0   10G  0 disk 
###### sdc                         8:32   0    2G  0 disk 
###### sdd                         8:48   0    1G  0 disk 
###### sde                         8:64   0    1G  0 disk 
###### sr0                        11:0    1 1024M  0 rom  
2025-11-16 21:34:00 root: pvcreate /dev/sdb
######   Physical volume "/dev/sdb" successfully created.
2025-11-16 21:34:11 root: vgcreate vg_root /dev/sdb
######   Volume group "vg_root" successfully created
2025-11-16 21:34:34 root: lvcreate -n lv_root -l +100%FREE /dev/vg_root
######   Logical volume "lv_root" created.
2025-11-16 21:34:50 root: mkfs.ext4 /dev/vg_root/lv_root
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 2620416 4k blocks and 655360 inodes
###### Filesystem UUID: 8ad732bb-b8d6-4148-8922-00061341efaa
###### Superblock backups stored on blocks: 
###### 	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632
###### 
###### Allocating group tables:  0/80     done                            
###### Writing inode tables:  0/80     done                            
###### Creating journal (16384 blocks): done
###### Writing superblocks and filesystem accounting information:  0/80     done
###### 
2025-11-16 21:35:01 root: mount /dev/vg_root/lv_root /mnt
2025-11-16 21:40:20 root: rsync -avxHAX / /mnt/ --stats
###### sending incremental file list
###### home/user/command_log.txt
###### tmp/
###### tmp/tmp.mb6EyDSh48
###### 
###### Number of files: 97,825 (reg: 78,852, dir: 10,640, link: 8,333)
###### Number of created files: 1 (reg: 1)
###### Number of deleted files: 0
###### Number of regular files transferred: 2
###### Total file size: 2,534,582,919 bytes
###### Total transferred file size: 1,834 bytes
###### Literal data: 1,860 bytes
###### Matched data: 0 bytes
###### File list size: 393,193
###### File list generation time: 0.001 seconds
###### File list transfer time: 0.000 seconds
###### Total bytes sent: 2,653,706
###### Total bytes received: 11,250
###### 
###### sent 2,653,706 bytes  received 11,250 bytes  1,065,982.40 bytes/sec
###### total size is 2,534,582,919  speedup is 951.08
2025-11-16 21:41:30 root: for i in /proc/ /sys/ /dev/ /run/ /boot/
2025-11-16 21:41:30 root: do mount --bind /mnt/
2025-11-16 21:41:30 root: done
2025-11-16 21:43:34 root: chroot /mnt/
2025-11-16 21:43:38 root: grub-mkconfig -o /boot/grub/grub.cfg
###### Sourcing file `/etc/default/grub'
###### Generating grub configuration file ...
###### Found linux image: /boot/vmlinuz-6.8.0-87-generic
###### Found initrd image: /boot/initrd.img-6.8.0-87-generic
###### Warning: os-prober will not be executed to detect other bootable partitions.
###### Systems on them will not be added to the GRUB boot configuration.
###### Check GRUB_DISABLE_OS_PROBER documentation entry.
###### Adding boot menu entry for UEFI Firmware Settings ...
###### done
2025-11-16 21:44:15 root: update-initramfs -u
###### update-initramfs: Generating /boot/initrd.img-6.8.0-87-generic
2025-11-16 21:44:32 root: reboot
2025-11-16 21:49:41 root: lsblk
###### NAME                      MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
###### sda                         8:0    0   10G  0 disk 
###### ├─sda1                      8:1    0    1M  0 part 
###### ├─sda2                      8:2    0  1.8G  0 part /boot
###### └─sda3                      8:3    0  8.2G  0 part 
######   └─ubuntu--vg-ubuntu--lv 252:1    0  8.2G  0 lvm  
###### sdb                         8:16   0   10G  0 disk 
###### └─vg_root-lv_root         252:0    0   10G  0 lvm  /
###### sdc                         8:32   0    2G  0 disk 
###### sdd                         8:48   0    1G  0 disk 
###### sde                         8:64   0    1G  0 disk 
###### sr0                        11:0    1 1024M  0 rom  
2025-11-16 21:52:26 root: lvremove /dev/ubuntu-vg/ubuntu-lv
###### Do you really want to remove and DISCARD active logical volume ubuntu-vg/ubuntu-lv? [y/n]:   Logical volume "ubuntu-lv" successfully removed.
2025-11-16 21:52:52 root: lvcreate -n ubuntu-vg/ubuntu-lv -L 8G /dev/ubuntu-vg
###### WARNING: ext4 signature detected on /dev/ubuntu-vg/ubuntu-lv at offset 1080. Wipe it? [y/n]:   Wiping ext4 signature on /dev/ubuntu-vg/ubuntu-lv.
######   Logical volume "ubuntu-lv" created.
2025-11-16 21:53:08 root: mkfs.ext4 /dev/ubuntu-vg/ubuntu-lv
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 2097152 4k blocks and 524288 inodes
###### Filesystem UUID: bf8459e4-9b6a-4cf5-9060-862ef9d288d6
###### Superblock backups stored on blocks: 
###### 	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632
###### 
###### Allocating group tables:  0/64     done                            
###### Writing inode tables:  0/64     done                            
###### Creating journal (16384 blocks): done
###### Writing superblocks and filesystem accounting information:  0/64     done
###### 
2025-11-16 21:53:26 root: mount /dev/ubuntu-vg/ubuntu-lv /mnt
2025-11-16 21:54:09 root: rsync -avxHAX / /mnt/ --stats
2025-11-16 21:56:03 root: for i in /proc/ /sys/ /dev/ /run/ /boot/; do mount --bind /mnt/; done
2025-11-16 21:56:43 root: chroot /mnt/
2025-11-16 21:56:59 root: grub-mkconfig -o /boot/grub/grub.cfg
###### Sourcing file `/etc/default/grub'
###### Generating grub configuration file ...
###### Found linux image: /boot/vmlinuz-6.8.0-87-generic
###### Found initrd image: /boot/initrd.img-6.8.0-87-generic
###### Warning: os-prober will not be executed to detect other bootable partitions.
###### Systems on them will not be added to the GRUB boot configuration.
###### Check GRUB_DISABLE_OS_PROBER documentation entry.
###### Adding boot menu entry for UEFI Firmware Settings ...
###### done
2025-11-16 21:57:15 root: update-initramfs -u
###### update-initramfs: Generating /boot/initrd.img-6.8.0-87-generic
2025-11-16 22:02:23 root: echo Выделить том под /var в зеркало
###### Выделить том под /var в зеркало
2025-11-16 22:02:52 root: pvcreate /dev/sdc /dev/sdd
######   Physical volume "/dev/sdc" successfully created.
######   Physical volume "/dev/sdd" successfully created.
2025-11-16 22:03:05 root: vgcreate vg_var /dev/sdc /dev/sdd
######   Volume group "vg_var" successfully created
2025-11-16 22:03:25 root: lvcreate -L 950M -m1 -n lv_var vg_var
######   Rounding up size to full physical extent 952.00 MiB
######   Logical volume "lv_var" created.
2025-11-16 22:04:12 root: mkfs.ext4 /dev/vg_var/lv_var
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 243712 4k blocks and 60928 inodes
###### Filesystem UUID: a616a958-5785-4238-b525-371b078ba1f9
###### Superblock backups stored on blocks: 
###### 	32768, 98304, 163840, 229376
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: done
###### 
2025-11-16 22:04:22 root: mount /dev/vg_var/lv_var /mnt
2025-11-16 22:04:38 root: cp -aR /var/backups /var/cache /var/crash /var/lib /var/local /var/lock /var/log /var/mail /var/opt /var/run /var/snap /var/spool /var/tmp /mnt/
2025-11-16 22:04:57 root: mkdir /tmp/oldvar && mv /var/* /tmp/oldvar
2025-11-16 22:05:09 root: umount /mnt
2025-11-16 22:05:23 root: mount /dev/vg_var/lv_var /var
2025-11-16 22:13:52 root: echo UUID="a616a958-5785-4238-b525-371b078ba1f9" /var ext4 defaults 0 0 >> /etc/fstab
###### UUID=a616a958-5785-4238-b525-371b078ba1f9 /var ext4 defaults 0 0
2025-11-16 22:14:05 root: reboot
2025-11-16 22:20:18 root: lvremove /dev/vg_root/lv_root
###### Do you really want to remove and DISCARD active logical volume vg_root/lv_root? [y/n]:   Logical volume "lv_root" successfully removed.
2025-11-16 22:20:31 root: vgremove /dev/vg_root
######   Volume group "vg_root" successfully removed
2025-11-16 22:20:46 root: pvremove /dev/sdb
######   Labels on physical volume "/dev/sdb" successfully wiped.
2025-11-16 22:21:27 root: lsblk
###### NAME                      MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
###### sda                         8:0    0   10G  0 disk 
###### ├─sda1                      8:1    0    1M  0 part 
###### ├─sda2                      8:2    0  1.8G  0 part /boot
###### └─sda3                      8:3    0  8.2G  0 part 
######   └─ubuntu--vg-ubuntu--lv 252:1    0    8G  0 lvm  /
###### sdb                         8:16   0   10G  0 disk 
###### sdc                         8:32   0    2G  0 disk 
###### ├─vg_var-lv_var_rmeta_0   252:2    0    4M  0 lvm  
###### │ └─vg_var-lv_var         252:6    0  952M  0 lvm  /var
###### └─vg_var-lv_var_rimage_0  252:3    0  952M  0 lvm  
######   └─vg_var-lv_var         252:6    0  952M  0 lvm  /var
###### sdd                         8:48   0    1G  0 disk 
###### ├─vg_var-lv_var_rmeta_1   252:4    0    4M  0 lvm  
###### │ └─vg_var-lv_var         252:6    0  952M  0 lvm  /var
###### └─vg_var-lv_var_rimage_1  252:5    0  952M  0 lvm  
######   └─vg_var-lv_var         252:6    0  952M  0 lvm  /var
###### sde                         8:64   0    1G  0 disk 
###### sr0                        11:0    1 1024M  0 rom  
2025-11-16 22:21:42 root: echo Выделить том под /home
###### Выделить том под /home
2025-11-16 23:09:58 root: lvcreate -n LogVol_Home -L 2G /dev/ubuntu-vg
######   Logical volume "LogVol_Home" created.
2025-11-16 23:10:29 root: mkfs.ext4 /dev/ubuntu-vg/LogVol_Home
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 524288 4k blocks and 131072 inodes
###### Filesystem UUID: f6926fad-e66a-457d-a8f4-f81d155e18fc
###### Superblock backups stored on blocks: 
###### 	32768, 98304, 163840, 229376, 294912
###### 
###### Allocating group tables:  0/16     done                            
###### Writing inode tables:  0/16     done                            
###### Creating journal (16384 blocks): done
###### Writing superblocks and filesystem accounting information:  0/16     done
###### 
2025-11-16 23:10:42 root: mount /dev/ubuntu-vg/LogVol_Home /mnt/
2025-11-16 23:10:52 root: cp -aR /home/user /mnt/
2025-11-16 23:11:02 root: rm -rf /home/*
2025-11-16 23:11:25 root: umount /mnt
2025-11-16 23:11:53 root: mount /dev/ubuntu-vg/LogVol_Home /home/
2025-11-16 23:12:47 root: echo UUID="f6926fad-e66a-457d-a8f4-f81d155e18fc" /home xfs defaults 0 0 /etc/fstab
###### UUID=f6926fad-e66a-457d-a8f4-f81d155e18fc /home xfs defaults 0 0 /etc/fstab
2025-11-16 23:15:45 root: lsblk
###### NAME                       MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
###### sda                          8:0    0   20G  0 disk 
###### ├─sda1                       8:1    0    1M  0 part 
###### ├─sda2                       8:2    0  1.8G  0 part /boot
###### └─sda3                       8:3    0 12.2G  0 part 
######   ├─ubuntu--vg-ubuntu--lv  252:0    0  9.2G  0 lvm  /
######   └─ubuntu--vg-LogVol_Home 252:6    0    2G  0 lvm  /home
###### sdb                          8:16   0   10G  0 disk 
###### sdc                          8:32   0    2G  0 disk 
###### ├─vg_var-lv_var_rmeta_0    252:1    0    4M  0 lvm  
###### │ └─vg_var-lv_var          252:5    0  952M  0 lvm  /var
###### └─vg_var-lv_var_rimage_0   252:2    0  952M  0 lvm  
######   └─vg_var-lv_var          252:5    0  952M  0 lvm  /var
###### sdd                          8:48   0    1G  0 disk 
###### ├─vg_var-lv_var_rmeta_1    252:3    0    4M  0 lvm  
###### │ └─vg_var-lv_var          252:5    0  952M  0 lvm  /var
###### └─vg_var-lv_var_rimage_1   252:4    0  952M  0 lvm  
######   └─vg_var-lv_var          252:5    0  952M  0 lvm  /var
###### sde                          8:64   0    1G  0 disk 
###### sr0                         11:0    1 1024M  0 rom  
2025-11-16 23:16:02 root: Работа со снапшотами
###### Работа: command not found
2025-11-16 23:16:26 root: touch /home/file1 /home/file2 /home/file3 /home/file4 /home/file5 /home/file6 /home/file7 /home/file8 /home/file9 /home/file10 /home/file11 /home/file12 /home/file13 /home/file14 /home/file15 /home/file16 /home/file17 /home/file18 /home/file19 /home/file20
2025-11-16 23:17:15 root: lvcreate -L 100MB -s -n home_snap /dev/ubuntu-vg/LogVol_Home
###### Logical volume "home_snap" created.
2025-11-16 23:17:33 root: rm -f /home/file{11..20}
2025-11-16 23:17:41 root: umount /home
2025-11-16 23:17:55 root: lvconvert --merge /dev/ubuntu-vg/home_snap
###### Merging of volume ubuntu-vg/home_snap started.
###### ubuntu-vg/LogVol_Home: Merged: 100.00%
2025-11-16 23:18:06 root: mount /dev/mapper/ubuntu--vg-LogVol_Home /home
2025-11-16 23:18:34 root: ls -al /home
###### total 28
###### drwxr-xr-x  4 root root  4096 Nov 16 23:16 .
###### drwxr-xr-x 23 root root  4096 Nov 16 19:49 ..
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file1
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file10
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file11
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file12
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file13
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file14
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file15
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file16
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file17
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file18
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file19
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file2
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file20
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file3
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file4
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file5
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file6
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file7
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file8
###### -rw-r--r--  1 root root     0 Nov 16 23:16 file9
###### drwx------  2 root root 16384 Nov 16 23:10 lost+found
###### drwxr-x---  4 user user  4096 Nov 16 23:15 user
