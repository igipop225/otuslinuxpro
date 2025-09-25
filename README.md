2025-09-25 20:49:20 root: lsblk
###### NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
###### loop0    7:0    0     4K  1 loop /snap/bare/5
###### loop1    7:1    0  73.9M  1 loop /snap/core22/2133
###### loop2    7:2    0  73.9M  1 loop /snap/core22/2111
###### loop3    7:3    0 246.4M  1 loop /snap/firefox/6738
###### loop4    7:4    0  10.7M  1 loop /snap/firmware-updater/127
###### loop5    7:5    0 247.1M  1 loop /snap/firefox/6836
###### loop6    7:6    0 505.1M  1 loop /snap/gnome-42-2204/176
###### loop7    7:7    0  11.1M  1 loop /snap/firmware-updater/167
###### loop8    7:8    0  10.3M  1 loop /snap/snap-store/1124
###### loop9    7:9    0   516M  1 loop /snap/gnome-42-2204/202
###### loop10   7:10   0  91.7M  1 loop /snap/gtk-common-themes/1535
###### loop11   7:11   0  38.7M  1 loop /snap/snapd/21465
###### loop12   7:12   0  50.8M  1 loop /snap/snapd/25202
###### loop13   7:13   0   476K  1 loop /snap/snapd-desktop-integration/157
###### loop14   7:14   0   576K  1 loop /snap/snapd-desktop-integration/315
###### sda      8:0    0    50G  0 disk 
###### ├─sda1   8:1    0     1M  0 part 
###### └─sda2   8:2    0    50G  0 part /var/snap/firefox/common/host-hunspell
######                                  /
###### sdb      8:16   0    10G  0 disk 
###### ├─sdb1   8:17   0     1G  0 part 
###### ├─sdb2   8:18   0     1G  0 part 
###### ├─sdb3   8:19   0     1G  0 part 
###### ├─sdb4   8:20   0     1G  0 part 
###### └─sdb5   8:21   0     1G  0 part 
2025-09-25 20:50:41 root: mdadm --zero-superblock --force /dev/sdb /dev/sdb1 /dev/sdb2 /dev/sdb3 /dev/sdb4 /dev/sdb5
###### mdadm: Unrecognised md component device - /dev/sdb
###### mdadm: Unrecognised md component device - /dev/sdb1
###### mdadm: Unrecognised md component device - /dev/sdb2
###### mdadm: Unrecognised md component device - /dev/sdb3
###### mdadm: Unrecognised md component device - /dev/sdb4
###### mdadm: Unrecognised md component device - /dev/sdb5
2025-09-25 21:07:52 root: mdadm --create --verbose /dev/md0 -l 6 -n 5 /dev/sdb1 /dev/sdb2 /dev/sdb3 /dev/sdb4 /dev/sdb5
###### mdadm: layout defaults to left-symmetric
###### mdadm: layout defaults to left-symmetric
###### mdadm: chunk size defaults to 512K
###### mdadm: size set to 1046528K
###### mdadm: Defaulting to version 1.2 metadata
###### mdadm: array /dev/md0 started.
2025-09-25 21:08:40 root: cat /proc/mdstat
###### Personalities : [raid0] [raid1] [raid4] [raid5] [raid6] [raid10] [linear] 
###### md0 : active raid6 sdb5[4] sdb4[3] sdb3[2] sdb2[1] sdb1[0]
######       3139584 blocks super 1.2 level 6, 512k chunk, algorithm 2 [5/5] [UUUUU]
######       [===================>.]  resync = 99.0% (1036976/1046528) finish=0.0min speed=22481K/sec
######       
###### unused devices: <none>
2025-09-25 21:09:36 root: mdadm -D /dev/md0
###### /dev/md0:
######            Version : 1.2
######      Creation Time : Thu Sep 25 21:07:52 2025
######         Raid Level : raid6
######         Array Size : 3139584 (2.99 GiB 3.21 GB)
######      Used Dev Size : 1046528 (1022.00 MiB 1071.64 MB)
######       Raid Devices : 5
######      Total Devices : 5
######        Persistence : Superblock is persistent
###### 
######        Update Time : Thu Sep 25 21:08:40 2025
######              State : clean 
######     Active Devices : 5
######    Working Devices : 5
######     Failed Devices : 0
######      Spare Devices : 0
###### 
######             Layout : left-symmetric
######         Chunk Size : 512K
###### 
###### Consistency Policy : resync
###### 
######               Name : user-VM:0  (local to host user-VM)
######               UUID : 7890233b:d6fb14d5:91b2e37c:8c6add63
######             Events : 17
###### 
######     Number   Major   Minor   RaidDevice State
######        0       8       17        0      active sync   /dev/sdb1
######        1       8       18        1      active sync   /dev/sdb2
######        2       8       19        2      active sync   /dev/sdb3
######        3       8       20        3      active sync   /dev/sdb4
######        4       8       21        4      active sync   /dev/sdb5
2025-09-25 21:15:56 root: mdadm /dev/md0 --fail /dev/sdb1
###### mdadm: set /dev/sdb1 faulty in /dev/md0
2025-09-25 21:16:10 root: cat /proc//mdstat
###### Personalities : [raid0] [raid1] [raid4] [raid5] [raid6] [raid10] [linear] 
###### md0 : active raid6 sdb5[4] sdb4[3] sdb3[2] sdb2[1] sdb1[0](F)
######       3139584 blocks super 1.2 level 6, 512k chunk, algorithm 2 [5/4] [_UUUU]
######       
###### unused devices: <none>
2025-09-25 21:44:37 root: mdadm -D /dev//md0
###### /dev//md0:
######            Version : 1.2
######      Creation Time : Thu Sep 25 21:07:52 2025
######         Raid Level : raid6
######         Array Size : 3139584 (2.99 GiB 3.21 GB)
######      Used Dev Size : 1046528 (1022.00 MiB 1071.64 MB)
######       Raid Devices : 5
######      Total Devices : 5
######        Persistence : Superblock is persistent
###### 
######        Update Time : Thu Sep 25 21:15:57 2025
######              State : clean, degraded 
######     Active Devices : 4
######    Working Devices : 4
######     Failed Devices : 1
######      Spare Devices : 0
###### 
######             Layout : left-symmetric
######         Chunk Size : 512K
###### 
###### Consistency Policy : resync
###### 
######               Name : user-VM:0  (local to host user-VM)
######               UUID : 7890233b:d6fb14d5:91b2e37c:8c6add63
######             Events : 19
###### 
######     Number   Major   Minor   RaidDevice State
######        -       0        0        0      removed
######        1       8       18        1      active sync   /dev/sdb2
######        2       8       19        2      active sync   /dev/sdb3
######        3       8       20        3      active sync   /dev/sdb4
######        4       8       21        4      active sync   /dev/sdb5
###### 
######        0       8       17        -      faulty   /dev/sdb1
2025-09-25 21:45:12 root: mdadm /dev/md0 --remove /dev/sdb1
###### mdadm: hot removed /dev/sdb1 from /dev/md0
2025-09-25 21:46:33 root: mdadm --examine /dev/sdb1
###### /dev/sdb1:
######           Magic : a92b4efc
######         Version : 1.2
######     Feature Map : 0x0
######      Array UUID : 7890233b:d6fb14d5:91b2e37c:8c6add63
######            Name : user-VM:0  (local to host user-VM)
######   Creation Time : Thu Sep 25 21:07:52 2025
######      Raid Level : raid6
######    Raid Devices : 5
###### 
######  Avail Dev Size : 2093056 sectors (1022.00 MiB 1071.64 MB)
######      Array Size : 3139584 KiB (2.99 GiB 3.21 GB)
######     Data Offset : 4096 sectors
######    Super Offset : 8 sectors
######    Unused Space : before=4016 sectors, after=0 sectors
######           State : clean
######     Device UUID : 8a798a56:4a4cab70:8d2b7796:210b4e07
###### 
######     Update Time : Thu Sep 25 21:08:40 2025
######   Bad Block Log : 512 entries available at offset 16 sectors
######        Checksum : 7dc8bd9e - correct
######          Events : 17
###### 
######          Layout : left-symmetric
######      Chunk Size : 512K
###### 
######    Device Role : Active device 0
######    Array State : AAAAA ('A' == active, '.' == missing, 'R' == replacing)
2025-09-25 21:47:10 root: mdadm --zero-superblock --force /dev/sdb1
2025-09-25 21:47:48 root: mdadm /dev/md0 --add /dev/sdb1
###### mdadm: added /dev/sdb1
2025-09-25 21:47:51 root: cat /proc/mdstat
###### Personalities : [raid0] [raid1] [raid4] [raid5] [raid6] [raid10] [linear] 
###### md0 : active raid6 sdb1[5] sdb5[4] sdb4[3] sdb3[2] sdb2[1]
######       3139584 blocks super 1.2 level 6, 512k chunk, algorithm 2 [5/4] [_UUUU]
######       [====>................]  recovery = 20.4% (214912/1046528) finish=0.1min speed=71637K/sec
######       
###### unused devices: <none>
2025-09-25 21:48:32 root: mdadm -D /dev/md0
###### /dev/md0:
######            Version : 1.2
######      Creation Time : Thu Sep 25 21:07:52 2025
######         Raid Level : raid6
######         Array Size : 3139584 (2.99 GiB 3.21 GB)
######      Used Dev Size : 1046528 (1022.00 MiB 1071.64 MB)
######       Raid Devices : 5
######      Total Devices : 5
######        Persistence : Superblock is persistent
###### 
######        Update Time : Thu Sep 25 21:48:03 2025
######              State : clean 
######     Active Devices : 5
######    Working Devices : 5
######     Failed Devices : 0
######      Spare Devices : 0
###### 
######             Layout : left-symmetric
######         Chunk Size : 512K
###### 
###### Consistency Policy : resync
###### 
######               Name : user-VM:0  (local to host user-VM)
######               UUID : 7890233b:d6fb14d5:91b2e37c:8c6add63
######             Events : 39
###### 
######     Number   Major   Minor   RaidDevice State
######        5       8       17        0      active sync   /dev/sdb1
######        1       8       18        1      active sync   /dev/sdb2
######        2       8       19        2      active sync   /dev/sdb3
######        3       8       20        3      active sync   /dev/sdb4
######        4       8       21        4      active sync   /dev/sdb5
2025-09-25 21:54:29 root: parted -s /dev/md0 mklabel gpt
2025-09-25 22:10:33 root: parted /dev/md0 mkpart primary ext4 0% 20%
###### Information: You may need to update /etc/fstab.
###### 
2025-09-25 22:10:44 root: parted /dev/md0 mkpart primary ext4 20% 40%
###### Information: You may need to update /etc/fstab.
###### 
2025-09-25 22:10:49 root: parted /dev/md0 mkpart primary ext4 40% 60%
###### Information: You may need to update /etc/fstab.
###### 
2025-09-25 22:10:54 root: parted /dev/md0 mkpart primary ext4 60% 80%
###### Information: You may need to update /etc/fstab.
###### 
2025-09-25 22:11:01 root: parted /dev/md0 mkpart primary ext4 80% 100%
###### Information: You may need to update /etc/fstab.
###### 
2025-09-25 22:14:00 root: for i in $(seq 1 5 ); do mkfs.ext4 /dev/md0p$i; done
root@user-VM:~# for i in $(seq 1 5 ); do mkfs.ext4 /dev/md0p$i; done
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 156672 4k blocks and 39200 inodes
###### Filesystem UUID: 0b97dfe9-d201-4718-a092-abf6e70d6c40
###### Superblock backups stored on blocks: 
###### 	32768, 98304
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: done
###### 
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 157056 4k blocks and 39280 inodes
###### Filesystem UUID: a62ab1e1-c4c2-438d-bdd0-00f2b990c9fb
###### Superblock backups stored on blocks: 
###### 	32768, 98304
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: done
###### 
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 156672 4k blocks and 39200 inodes
###### Filesystem UUID: ea42200f-c27c-41d7-9b71-4fc34792970a
###### Superblock backups stored on blocks: 
###### 	32768, 98304
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: done
###### 
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 157056 4k blocks and 39280 inodes
###### Filesystem UUID: 750b5719-a6f9-4266-840c-36565f322924
###### Superblock backups stored on blocks: 
###### 	32768, 98304
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: done
###### 
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 156672 4k blocks and 39200 inodes
###### Filesystem UUID: 53cc83ac-e616-4522-bbe4-3afa1a2fcf1b
###### Superblock backups stored on blocks: 
###### 	32768, 98304
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: donemke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 156672 4k blocks and 39200 inodes
###### Filesystem UUID: 0b97dfe9-d201-4718-a092-abf6e70d6c40
###### Superblock backups stored on blocks: 
###### 	32768, 98304
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: done
###### 
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 157056 4k blocks and 39280 inodes
###### Filesystem UUID: a62ab1e1-c4c2-438d-bdd0-00f2b990c9fb
###### Superblock backups stored on blocks: 
###### 	32768, 98304
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: done
###### 
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 156672 4k blocks and 39200 inodes
###### Filesystem UUID: ea42200f-c27c-41d7-9b71-4fc34792970a
###### Superblock backups stored on blocks: 
###### 	32768, 98304
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: done
###### 
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 157056 4k blocks and 39280 inodes
###### Filesystem UUID: 750b5719-a6f9-4266-840c-36565f322924
###### Superblock backups stored on blocks: 
###### 	32768, 98304
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: done
###### 
###### mke2fs 1.47.0 (5-Feb-2023)
###### Creating filesystem with 156672 4k blocks and 39200 inodes
###### Filesystem UUID: 53cc83ac-e616-4522-bbe4-3afa1a2fcf1b
###### Superblock backups stored on blocks: 
###### 	32768, 98304
###### 
###### Allocating group tables: done                            
###### Writing inode tables: done                            
###### Creating journal (4096 blocks): done
###### Writing superblocks and filesystem accounting information: done
###### 
2025-09-25 22:18:41 root: mkdir -p /raid/part1 /raid/part2 /raid/part3 /raid/part4 /raid/part5
2025-09-25 22:22:30 root:  for i in $(seq 1 5); do mount /dev/md0p$i /raid/part$i; done
