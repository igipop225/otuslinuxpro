2025-11-30 18:16:26 root: lsblk
###### NAME                      MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
###### sda                         8:0    0   10G  0 disk 
###### ├─sda1                      8:1    0    1M  0 part 
###### ├─sda2                      8:2    0  1.8G  0 part /boot
###### └─sda3                      8:3    0  8.2G  0 part 
######   └─ubuntu--vg-ubuntu--lv 252:0    0  8.2G  0 lvm  /
###### sdb                         8:16   0  512M  0 disk 
###### sdc                         8:32   0  512M  0 disk 
###### sdd                         8:48   0  512M  0 disk 
###### sde                         8:64   0  512M  0 disk 
###### sdf                         8:80   0  512M  0 disk 
###### sdg                         8:96   0  512M  0 disk 
###### sdh                         8:112  0  512M  0 disk 
###### sdi                         8:128  0  512M  0 disk 
###### sr0                        11:0    1 1024M  0 rom  
2025-11-30 18:46:44 root: apt install zfsutils-linux
###### 
###### WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
###### 
###### Reading package lists...
###### Building dependency tree...
###### Reading state information...
###### zfsutils-linux is already the newest version (2.2.2-0ubuntu9.4).
###### 0 upgraded, 0 newly installed, 0 to remove and 44 not upgraded.
2025-11-30 18:48:01 root: zpool create otus1 mirror /dev/sdb /dev/sdc
2025-11-30 18:49:07 root: zpool create otus2 mirror /dev/sdd /dev/sde
2025-11-30 18:49:22 root: zpool create otus3 mirror /dev/sdf /dev/sdg
2025-11-30 18:49:37 root: zpool create otus4 mirror /dev/sdh /dev/sdi
2025-11-30 18:49:48 root: zpool list
###### NAME    SIZE  ALLOC   FREE  CKPOINT  EXPANDSZ   FRAG    CAP  DEDUP    HEALTH  ALTROOT
###### otus1   480M   123K   480M        -         -     0%     0%  1.00x    ONLINE  -
###### otus2   480M   106K   480M        -         -     0%     0%  1.00x    ONLINE  -
###### otus3   480M   116K   480M        -         -     0%     0%  1.00x    ONLINE  -
###### otus4   480M   135K   480M        -         -     0%     0%  1.00x    ONLINE  -
2025-11-30 18:53:09 root: zfs set compression=lzjb otus1
2025-11-30 18:53:26 root: zfs set compression=lz4 otus2
2025-11-30 18:53:37 root: zfs set compression=gzip-9 otus3
2025-11-30 18:54:25 root: zfs set compression=zle otus4
2025-11-30 19:00:51 root: zfs get compression
###### NAME   PROPERTY     VALUE           SOURCE
###### otus1  compression  lzjb            local
###### otus2  compression  lz4             local
###### otus3  compression  gzip-9          local
###### otus4  compression  zle             local
2025-11-30 19:03:44 root: for i in {1..4}; do wget -P /otus$i https://gutenberg.org/cache/epub/2600/pg2600.converter.log; done
2025-11-30 19:09:53 root: ls -l /otus1 /otus2 /otus3 /otus4
###### /otus1:
###### total 22115
###### -rw-r--r-- 1 root root 41189447 Nov  2 08:31 pg2600.converter.log
###### 
###### /otus2:
###### total 18015
###### -rw-r--r-- 1 root root 41189447 Nov  2 08:31 pg2600.converter.log
###### 
###### /otus3:
###### total 10970
###### -rw-r--r-- 1 root root 41189447 Nov  2 08:31 pg2600.converter.log
###### 
###### /otus4:
###### total 40252
###### -rw-r--r-- 1 root root 41189447 Nov  2 08:31 pg2600.converter.log
2025-11-30 19:10:07 root: zfs list
###### NAME    USED  AVAIL  REFER  MOUNTPOINT
###### otus1  21.8M   330M  21.6M  /otus1
###### otus2  17.7M   334M  17.6M  /otus2
###### otus3  10.9M   341M  10.7M  /otus3
###### otus4  39.5M   313M  39.3M  /otus4
2025-11-30 19:11:14 root: zfs get compressratio
###### NAME   PROPERTY       VALUE  SOURCE
###### otus1  compressratio  1.82x  -
###### otus2  compressratio  2.23x  -
###### otus3  compressratio  3.66x  -
###### otus4  compressratio  1.00x  -
2025-11-30 19:12:35 root: echo #### 2 Определение настроек пула
###### 
2025-11-30 19:13:10 root: wget -O archive.tar.gz --no-check-certificate https://drive.usercontent.google.com/download?id=1MvrcEp-WgAQe57aDEzxSRalPAwbNN1Bb&export=download
###### --2025-11-30 19:13:10--  https://drive.usercontent.google.com/download?id=1MvrcEp-WgAQe57aDEzxSRalPAwbNN1Bb
###### Resolving drive.usercontent.google.com (drive.usercontent.google.com)... 142.250.75.225, 2a00:1450:4007:80d::2001
###### Connecting to drive.usercontent.google.com (drive.usercontent.google.com)|142.250.75.225|:443... connected.
###### HTTP request sent, awaiting response... 200 OK
###### Length: 7275140 (6.9M) [application/octet-stream]
###### Saving to: ‘archive.tar.gz’
###### 
######      0K .......... .......... .......... .......... ..........  0%  471K 15s
######     50K .......... .......... .......... .......... ..........  1%  950K 11s
######    100K .......... .......... .......... .......... ..........  2% 20.9M 7s
######    150K .......... .......... .......... .......... ..........  2% 1002K 7s
######    200K .......... .......... .......... .......... ..........  3% 17.9M 6s
######    250K .......... .......... .......... .......... ..........  4% 19.9M 5s
######    300K .......... .......... .......... .......... ..........  4% 21.3M 4s
######    350K .......... .......... .......... .......... ..........  5% 20.9M 4s
######    400K .......... .......... .......... .......... ..........  6% 1.09M 4s
######    450K .......... .......... .......... .......... ..........  7% 16.6M 4s
######    500K .......... .......... .......... .......... ..........  7% 17.7M 3s
######    550K .......... .......... .......... .......... ..........  8% 20.4M 3s
######    600K .......... .......... .......... .......... ..........  9% 21.8M 3s
######    650K .......... .......... .......... .......... ..........  9% 20.6M 3s
######    700K .......... .......... .......... .......... .......... 10% 21.7M 2s
######    750K .......... .......... .......... .......... .......... 11% 22.0M 2s
######    800K .......... .......... .......... .......... .......... 11% 21.5M 2s
######    850K .......... .......... .......... .......... .......... 12% 1.50M 2s
######    900K .......... .......... .......... .......... .......... 13% 13.1M 2s
######    950K .......... .......... .......... .......... .......... 14% 15.0M 2s
######   1000K .......... .......... .......... .......... .......... 14% 16.0M 2s
######   1050K .......... .......... .......... .......... .......... 15% 82.6M 2s
######   1100K .......... .......... .......... .......... .......... 16% 90.3M 2s
######   1150K .......... .......... .......... .......... .......... 16%  107M 2s
######   1200K .......... .......... .......... .......... .......... 17% 95.7M 2s
######   1250K .......... .......... .......... .......... .......... 18%  103M 1s
######   1300K .......... .......... .......... .......... .......... 19% 85.6M 1s
######   1350K .......... .......... .......... .......... .......... 19% 92.8M 1s
######   1400K .......... .......... .......... .......... .......... 20% 70.4M 1s
######   1450K .......... .......... .......... .......... .......... 21% 86.0M 1s
######   1500K .......... .......... .......... .......... .......... 21% 94.0M 1s
######   1550K .......... .......... .......... .......... .......... 22% 90.6M 1s
######   1600K .......... .......... .......... .......... .......... 23% 96.1M 1s
######   1650K .......... .......... .......... .......... .......... 23%  106M 1s
######   1700K .......... .......... .......... .......... .......... 24% 93.8M 1s
######   1750K .......... .......... .......... .......... .......... 25% 1.43M 1s
######   1800K .......... .......... .......... .......... .......... 26% 55.9M 1s
######   1850K .......... .......... .......... .......... .......... 26% 30.6M 1s
######   1900K .......... .......... .......... .......... .......... 27% 52.5M 1s
######   1950K .......... .......... .......... .......... .......... 28% 56.2M 1s
######   2000K .......... .......... .......... .......... .......... 28% 45.4M 1s
######   2050K .......... .......... .......... .......... .......... 29% 75.5M 1s
######   2100K .......... .......... .......... .......... .......... 30% 74.9M 1s
######   2150K .......... .......... .......... .......... .......... 30% 68.5M 1s
######   2200K .......... .......... .......... .......... .......... 31% 71.4M 1s
######   2250K .......... .......... .......... .......... .......... 32% 54.8M 1s
######   2300K .......... .......... .......... .......... .......... 33% 48.4M 1s
######   2350K .......... .......... .......... .......... .......... 33% 46.6M 1s
######   2400K .......... .......... .......... .......... .......... 34% 56.8M 1s
######   2450K .......... .......... .......... .......... .......... 35% 75.9M 1s
######   2500K .......... .......... .......... .......... .......... 35% 56.7M 1s
######   2550K .......... .......... .......... .......... .......... 36% 41.2M 1s
######   2600K .......... .......... .......... .......... .......... 37% 44.5M 1s
######   2650K .......... .......... .......... .......... .......... 38% 39.0M 1s
######   2700K .......... .......... .......... .......... .......... 38% 48.3M 1s
######   2750K .......... .......... .......... .......... .......... 39% 89.8M 1s
######   2800K .......... .......... .......... .......... .......... 40% 74.4M 1s
######   2850K .......... .......... .......... .......... .......... 40% 93.4M 1s
######   2900K .......... .......... .......... .......... .......... 41% 82.1M 1s
######   2950K .......... .......... .......... .......... .......... 42% 91.4M 1s
######   3000K .......... .......... .......... .......... .......... 42% 90.3M 1s
######   3050K .......... .......... .......... .......... .......... 43% 84.8M 1s
######   3100K .......... .......... .......... .......... .......... 44% 77.5M 0s
######   3150K .......... .......... .......... .......... .......... 45% 81.2M 0s
######   3200K .......... .......... .......... .......... .......... 45%  112M 0s
######   3250K .......... .......... .......... .......... .......... 46% 88.6M 0s
######   3300K .......... .......... .......... .......... .......... 47% 89.7M 0s
######   3350K .......... .......... .......... .......... .......... 47% 76.6M 0s
######   3400K .......... .......... .......... .......... .......... 48%  114M 0s
######   3450K .......... .......... .......... .......... .......... 49% 71.4M 0s
######   3500K .......... .......... .......... .......... .......... 49% 1.84M 0s
######   3550K .......... .......... .......... .......... .......... 50% 40.5M 0s
######   3600K .......... .......... .......... .......... .......... 51% 50.4M 0s
######   3650K .......... .......... .......... .......... .......... 52% 58.6M 0s
######   3700K .......... .......... .......... .......... .......... 52% 72.1M 0s
######   3750K .......... .......... .......... .......... .......... 53% 80.8M 0s
######   3800K .......... .......... .......... .......... .......... 54% 61.1M 0s
######   3850K .......... .......... .......... .......... .......... 54% 76.1M 0s
######   3900K .......... .......... .......... .......... .......... 55% 20.0M 0s
######   3950K .......... .......... .......... .......... .......... 56% 10.1M 0s
######   4000K .......... .......... .......... .......... .......... 57% 9.95M 0s
######   4050K .......... .......... .......... .......... .......... 57% 12.4M 0s
######   4100K .......... .......... .......... .......... .......... 58% 11.5M 0s
######   4150K .......... .......... .......... .......... .......... 59% 9.50M 0s
######   4200K .......... .......... .......... .......... .......... 59% 15.9M 0s
######   4250K .......... .......... .......... .......... .......... 60% 9.50M 0s
######   4300K .......... .......... .......... .......... .......... 61% 15.9M 0s
######   4350K .......... .......... .......... .......... .......... 61% 10.8M 0s
######   4400K .......... .......... .......... .......... .......... 62% 12.4M 0s
######   4450K .......... .......... .......... .......... .......... 63% 9.21M 0s
######   4500K .......... .......... .......... .......... .......... 64% 13.4M 0s
######   4550K .......... .......... .......... .......... .......... 64% 8.48M 0s
######   4600K .......... .......... .......... .......... .......... 65% 20.9M 0s
######   4650K .......... .......... .......... .......... .......... 66% 11.0M 0s
######   4700K .......... .......... .......... .......... .......... 66% 14.5M 0s
######   4750K .......... .......... .......... .......... .......... 67% 9.08M 0s
######   4800K .......... .......... .......... .......... .......... 68% 9.01M 0s
######   4850K .......... .......... .......... .......... .......... 68% 11.1M 0s
######   4900K .......... .......... .......... .......... .......... 69% 15.5M 0s
######   4950K .......... .......... .......... .......... .......... 70% 9.65M 0s
######   5000K .......... .......... .......... .......... .......... 71% 15.2M 0s
######   5050K .......... .......... .......... .......... .......... 71% 8.57M 0s
######   5100K .......... .......... .......... .......... .......... 72% 12.9M 0s
######   5150K .......... .......... .......... .......... .......... 73% 12.0M 0s
######   5200K .......... .......... .......... .......... .......... 73% 9.02M 0s
######   5250K .......... .......... .......... .......... .......... 74% 10.6M 0s
######   5300K .......... .......... .......... .......... .......... 75% 19.3M 0s
######   5350K .......... .......... .......... .......... .......... 76% 11.9M 0s
######   5400K .......... .......... .......... .......... .......... 76% 15.4M 0s
######   5450K .......... .......... .......... .......... .......... 77% 8.34M 0s
######   5500K .......... .......... .......... .......... .......... 78% 9.55M 0s
######   5550K .......... .......... .......... .......... .......... 78% 11.8M 0s
######   5600K .......... .......... .......... .......... .......... 79% 13.9M 0s
######   5650K .......... .......... .......... .......... .......... 80% 14.3M 0s
######   5700K .......... .......... .......... .......... .......... 80% 9.79M 0s
######   5750K .......... .......... .......... .......... .......... 81% 11.1M 0s
######   5800K .......... .......... .......... .......... .......... 82% 18.3M 0s
######   5850K .......... .......... .......... .......... .......... 83% 7.49M 0s
######   5900K .......... .......... .......... .......... .......... 83% 11.5M 0s
######   5950K .......... .......... .......... .......... .......... 84% 9.94M 0s
######   6000K .......... .......... .......... .......... .......... 85% 9.13M 0s
######   6050K .......... .......... .......... .......... .......... 85% 27.0M 0s
######   6100K .......... .......... .......... .......... .......... 86% 11.8M 0s
######   6150K .......... .......... .......... .......... .......... 87% 5.32M 0s
######   6200K .......... .......... .......... .......... .......... 87% 34.9M 0s
######   6250K .......... .......... .......... .......... .......... 88% 17.2M 0s
######   6300K .......... .......... .......... .......... .......... 89% 12.3M 0s
######   6350K .......... .......... .......... .......... .......... 90% 13.5M 0s
######   6400K .......... .......... .......... .......... .......... 90% 9.77M 0s
######   6450K .......... .......... .......... .......... .......... 91% 9.99M 0s
######   6500K .......... .......... .......... .......... .......... 92% 10.1M 0s
######   6550K .......... .......... .......... .......... .......... 92% 12.3M 0s
######   6600K .......... .......... .......... .......... .......... 93% 12.9M 0s
######   6650K .......... .......... .......... .......... .......... 94% 9.38M 0s
######   6700K .......... .......... .......... .......... .......... 95% 8.67M 0s
######   6750K .......... .......... .......... .......... .......... 95% 10.7M 0s
######   6800K .......... .......... .......... .......... .......... 96% 8.15M 0s
######   6850K .......... .......... .......... .......... .......... 97% 9.21M 0s
######   6900K .......... .......... .......... .......... .......... 97% 27.8M 0s
######   6950K .......... .......... .......... .......... .......... 98% 14.1M 0s
######   7000K .......... .......... .......... .......... .......... 99% 10.2M 0s
######   7050K .......... .......... .......... .......... .......... 99% 15.4M 0s
######   7100K ....                                                  100% 8.62T=0.7s
###### 
###### 2025-11-30 19:13:17 (9.88 MB/s) - ‘archive.tar.gz’ saved [7275140/7275140]
###### 
2025-11-30 19:13:57 root: tar -xzvf archive.tar.gz
###### zpoolexport/
###### zpoolexport/filea
###### zpoolexport/fileb
2025-11-30 19:21:59 root: zpool import -d zpoolexport/
######    pool: otus
######      id: 6554193320433390805
######   state: ONLINE
###### status: Some supported features are not enabled on the pool.
###### 	(Note that they may be intentionally disabled if the
###### 	'compatibility' property is set.)
######  action: The pool can be imported using its name or numeric identifier, though
###### 	some features will not be available without an explicit 'zpool upgrade'.
######  config:
###### 
###### 	otus                         ONLINE
###### 	  mirror-0                   ONLINE
###### 	    /root/zpoolexport/filea  ONLINE
###### 	    /root/zpoolexport/fileb  ONLINE
2025-11-30 19:27:02 root: zpool import -d zpoolexport/ otus
2025-11-30 19:28:40 root: zpool status
######   pool: otus
######  state: ONLINE
###### status: Some supported and requested features are not enabled on the pool.
###### 	The pool can still be used, but some features are unavailable.
###### action: Enable all features using 'zpool upgrade'. Once this is done,
###### 	the pool may no longer be accessible by software that does not support
###### 	the features. See zpool-features(7) for details.
###### config:
###### 
###### 	NAME                         STATE     READ WRITE CKSUM
###### 	otus                         ONLINE       0     0     0
###### 	  mirror-0                   ONLINE       0     0     0
###### 	    /root/zpoolexport/filea  ONLINE       0     0     0
###### 	    /root/zpoolexport/fileb  ONLINE       0     0     0
###### 
###### errors: No known data errors
###### 
######   pool: otus1
######  state: ONLINE
###### config:
###### 
###### 	NAME        STATE     READ WRITE CKSUM
###### 	otus1       ONLINE       0     0     0
###### 	  mirror-0  ONLINE       0     0     0
###### 	    sdb     ONLINE       0     0     0
###### 	    sdc     ONLINE       0     0     0
###### 
###### errors: No known data errors
###### 
######   pool: otus2
######  state: ONLINE
###### config:
###### 
###### 	NAME        STATE     READ WRITE CKSUM
###### 	otus2       ONLINE       0     0     0
###### 	  mirror-0  ONLINE       0     0     0
###### 	    sdd     ONLINE       0     0     0
###### 	    sde     ONLINE       0     0     0
###### 
###### errors: No known data errors
###### 
######   pool: otus3
######  state: ONLINE
###### config:
###### 
###### 	NAME        STATE     READ WRITE CKSUM
###### 	otus3       ONLINE       0     0     0
###### 	  mirror-0  ONLINE       0     0     0
###### 	    sdf     ONLINE       0     0     0
###### 	    sdg     ONLINE       0     0     0
###### 
###### errors: No known data errors
###### 
######   pool: otus4
######  state: ONLINE
###### config:
###### 
###### 	NAME        STATE     READ WRITE CKSUM
###### 	otus4       ONLINE       0     0     0
###### 	  mirror-0  ONLINE       0     0     0
###### 	    sdh     ONLINE       0     0     0
###### 	    sdi     ONLINE       0     0     0
###### 
###### errors: No known data errors
2025-11-30 19:30:59 root: zpool get all otus
###### NAME  PROPERTY                       VALUE                          SOURCE
###### otus  size                           480M                           -
###### otus  capacity                       0%                             -
###### otus  altroot                        -                              default
###### otus  health                         ONLINE                         -
###### otus  guid                           6554193320433390805            -
###### otus  version                        -                              default
###### otus  bootfs                         -                              default
###### otus  delegation                     on                             default
###### otus  autoreplace                    off                            default
###### otus  cachefile                      -                              default
###### otus  failmode                       wait                           default
###### otus  listsnapshots                  off                            default
###### otus  autoexpand                     off                            default
###### otus  dedupratio                     1.00x                          -
###### otus  free                           478M                           -
###### otus  allocated                      2.09M                          -
###### otus  readonly                       off                            -
###### otus  ashift                         0                              default
###### otus  comment                        -                              default
###### otus  expandsize                     -                              -
###### otus  freeing                        0                              -
###### otus  fragmentation                  0%                             -
###### otus  leaked                         0                              -
###### otus  multihost                      off                            default
###### otus  checkpoint                     -                              -
###### otus  load_guid                      390899684159045749             -
###### otus  autotrim                       off                            default
###### otus  compatibility                  off                            default
###### otus  bcloneused                     0                              -
###### otus  bclonesaved                    0                              -
###### otus  bcloneratio                    1.00x                          -
###### otus  feature@async_destroy          enabled                        local
###### otus  feature@empty_bpobj            active                         local
###### otus  feature@lz4_compress           active                         local
###### otus  feature@multi_vdev_crash_dump  enabled                        local
###### otus  feature@spacemap_histogram     active                         local
###### otus  feature@enabled_txg            active                         local
###### otus  feature@hole_birth             active                         local
###### otus  feature@extensible_dataset     active                         local
###### otus  feature@embedded_data          active                         local
###### otus  feature@bookmarks              enabled                        local
###### otus  feature@filesystem_limits      enabled                        local
###### otus  feature@large_blocks           enabled                        local
###### otus  feature@large_dnode            enabled                        local
###### otus  feature@sha512                 enabled                        local
###### otus  feature@skein                  enabled                        local
###### otus  feature@edonr                  enabled                        local
###### otus  feature@userobj_accounting     active                         local
###### otus  feature@encryption             enabled                        local
###### otus  feature@project_quota          active                         local
###### otus  feature@device_removal         enabled                        local
###### otus  feature@obsolete_counts        enabled                        local
###### otus  feature@zpool_checkpoint       enabled                        local
###### otus  feature@spacemap_v2            active                         local
###### otus  feature@allocation_classes     enabled                        local
###### otus  feature@resilver_defer         enabled                        local
###### otus  feature@bookmark_v2            enabled                        local
###### otus  feature@redaction_bookmarks    disabled                       local
###### otus  feature@redacted_datasets      disabled                       local
###### otus  feature@bookmark_written       disabled                       local
###### otus  feature@log_spacemap           disabled                       local
###### otus  feature@livelist               disabled                       local
###### otus  feature@device_rebuild         disabled                       local
###### otus  feature@zstd_compress          disabled                       local
###### otus  feature@draid                  disabled                       local
###### otus  feature@zilsaxattr             disabled                       local
###### otus  feature@head_errlog            disabled                       local
###### otus  feature@blake3                 disabled                       local
###### otus  feature@block_cloning          disabled                       local
###### otus  feature@vdev_zaps_v2           disabled                       local
2025-11-30 19:31:19 root: zfs get all otus
###### NAME  PROPERTY              VALUE                  SOURCE
###### otus  type                  filesystem             -
###### otus  creation              Fri May 15  4:00 2020  -
###### otus  used                  2.04M                  -
###### otus  available             350M                   -
###### otus  referenced            24K                    -
###### otus  compressratio         1.00x                  -
###### otus  mounted               yes                    -
###### otus  quota                 none                   default
###### otus  reservation           none                   default
###### otus  recordsize            128K                   local
###### otus  mountpoint            /otus                  default
###### otus  sharenfs              off                    default
###### otus  checksum              sha256                 local
###### otus  compression           zle                    local
###### otus  atime                 on                     default
###### otus  devices               on                     default
###### otus  exec                  on                     default
###### otus  setuid                on                     default
###### otus  readonly              off                    default
###### otus  zoned                 off                    default
###### otus  snapdir               hidden                 default
###### otus  aclmode               discard                default
###### otus  aclinherit            restricted             default
###### otus  createtxg             1                      -
###### otus  canmount              on                     default
###### otus  xattr                 on                     default
###### otus  copies                1                      default
###### otus  version               5                      -
###### otus  utf8only              off                    -
###### otus  normalization         none                   -
###### otus  casesensitivity       sensitive              -
###### otus  vscan                 off                    default
###### otus  nbmand                off                    default
###### otus  sharesmb              off                    default
###### otus  refquota              none                   default
###### otus  refreservation        none                   default
###### otus  guid                  14592242904030363272   -
###### otus  primarycache          all                    default
###### otus  secondarycache        all                    default
###### otus  usedbysnapshots       0B                     -
###### otus  usedbydataset         24K                    -
###### otus  usedbychildren        2.01M                  -
###### otus  usedbyrefreservation  0B                     -
###### otus  logbias               latency                default
###### otus  objsetid              54                     -
###### otus  dedup                 off                    default
###### otus  mlslabel              none                   default
###### otus  sync                  standard               default
###### otus  dnodesize             legacy                 default
###### otus  refcompressratio      1.00x                  -
###### otus  written               24K                    -
###### otus  logicalused           1020K                  -
###### otus  logicalreferenced     12K                    -
###### otus  volmode               default                default
###### otus  filesystem_limit      none                   default
###### otus  snapshot_limit        none                   default
###### otus  filesystem_count      none                   default
###### otus  snapshot_count        none                   default
###### otus  snapdev               hidden                 default
###### otus  acltype               off                    default
###### otus  context               none                   default
###### otus  fscontext             none                   default
###### otus  defcontext            none                   default
###### otus  rootcontext           none                   default
###### otus  relatime              on                     default
###### otus  redundant_metadata    all                    default
###### otus  overlay               on                     default
###### otus  encryption            off                    default
###### otus  keylocation           none                   default
###### otus  keyformat             none                   default
###### otus  pbkdf2iters           0                      default
###### otus  special_small_blocks  0                      default
2025-11-30 19:31:41 root: zfs get available otus
###### NAME  PROPERTY   VALUE  SOURCE
###### otus  available  350M   -
2025-11-30 19:32:47 root: zfs get readonly otus
###### NAME  PROPERTY  VALUE   SOURCE
###### otus  readonly  off     default
2025-11-30 19:33:09 root: zfs get recordsize otus
###### NAME  PROPERTY    VALUE    SOURCE
###### otus  recordsize  128K     local
2025-11-30 19:33:27 root: zfs get compression otus
###### NAME  PROPERTY     VALUE           SOURCE
###### otus  compression  zle             local
2025-11-30 19:33:38 root: zfs get checksum otus
###### NAME  PROPERTY  VALUE      SOURCE
###### otus  checksum  sha256     local
2025-11-30 19:34:05 root: echo #### 3 Работа со снапшотом, поиск сообщения от преподавателя
###### 
2025-11-30 19:34:28 root: wget -O otus_task2.file --no-check-certificate https://drive.usercontent.google.com/download?id=1wgxjih8YZ-cqLqaZVa0lA3h3Y029c3oI
###### 
###### Redirecting output to ‘wget-log.1’.
2025-11-30 19:58:28 root: zfs receive otus/test@today < otus_task2.file

2025-11-30 20:03:52 root: find /otus/test -name secret_message
###### /otus/test/task1/file_mess/secret_message
2025-11-30 20:04:17 root: cat /otus/test/task1/file_mess/secret_message
###### https://otus.ru/lessons/linux-hl/
###### 
