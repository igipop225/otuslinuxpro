Работа с NFS
Логи серверной части:
2025-12-20 15:08:10 root: apt install nfs-kernel-server -y
###### 
###### WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
###### 
###### Reading package lists...
###### Building dependency tree...
###### Reading state information...
###### The following additional packages will be installed:
######   keyutils libnfsidmap1 nfs-common rpcbind
###### Suggested packages:
######   watchdog
###### The following NEW packages will be installed:
######   keyutils libnfsidmap1 nfs-common nfs-kernel-server rpcbind
###### 0 upgraded, 5 newly installed, 0 to remove and 59 not upgraded.
###### Need to get 569 kB of archives.
###### After this operation, 2022 kB of additional disk space will be used.
###### Ign:1 http://fr.archive.ubuntu.com/ubuntu noble-updates/main amd64 libnfsidmap1 amd64 1:2.6.4-3ubuntu5.1
###### Get:2 http://fr.archive.ubuntu.com/ubuntu noble/main amd64 rpcbind amd64 1.2.6-7ubuntu2 [46.5 kB]
###### Get:3 http://fr.archive.ubuntu.com/ubuntu noble/main amd64 keyutils amd64 1.6.3-3build1 [56.8 kB]
###### Get:4 http://fr.archive.ubuntu.com/ubuntu noble-updates/main amd64 nfs-common amd64 1:2.6.4-3ubuntu5.1 [248 kB]
###### Get:5 http://fr.archive.ubuntu.com/ubuntu noble-updates/main amd64 nfs-kernel-server amd64 1:2.6.4-3ubuntu5.1 [169 kB]
###### Get:1 http://fr.archive.ubuntu.com/ubuntu noble-updates/main amd64 libnfsidmap1 amd64 1:2.6.4-3ubuntu5.1 [48.3 kB]
###### Fetched 569 kB in 11s (51.0 kB/s)
###### Selecting previously unselected package libnfsidmap1:amd64.
(Reading database ... 125314 files and directories currently installed.)
###### Preparing to unpack .../libnfsidmap1_1%3a2.6.4-3ubuntu5.1_amd64.deb ...
###### Unpacking libnfsidmap1:amd64 (1:2.6.4-3ubuntu5.1) ...
###### Selecting previously unselected package rpcbind.
###### Preparing to unpack .../rpcbind_1.2.6-7ubuntu2_amd64.deb ...
###### Unpacking rpcbind (1.2.6-7ubuntu2) ...
###### Selecting previously unselected package keyutils.
###### Preparing to unpack .../keyutils_1.6.3-3build1_amd64.deb ...
###### Unpacking keyutils (1.6.3-3build1) ...
###### Selecting previously unselected package nfs-common.
###### Preparing to unpack .../nfs-common_1%3a2.6.4-3ubuntu5.1_amd64.deb ...
###### Unpacking nfs-common (1:2.6.4-3ubuntu5.1) ...
###### Selecting previously unselected package nfs-kernel-server.
###### Preparing to unpack .../nfs-kernel-server_1%3a2.6.4-3ubuntu5.1_amd64.deb ...
###### Unpacking nfs-kernel-server (1:2.6.4-3ubuntu5.1) ...
###### Setting up libnfsidmap1:amd64 (1:2.6.4-3ubuntu5.1) ...
###### Setting up rpcbind (1.2.6-7ubuntu2) ...
###### Created symlink /etc/systemd/system/multi-user.target.wants/rpcbind.service → /usr/lib/systemd/system/rpcbind.service.
###### Created symlink /etc/systemd/system/sockets.target.wants/rpcbind.socket → /usr/lib/systemd/system/rpcbind.socket.
###### Setting up keyutils (1.6.3-3build1) ...
###### Setting up nfs-common (1:2.6.4-3ubuntu5.1) ...
###### 
###### Creating config file /etc/idmapd.conf with new version
###### 
###### Creating config file /etc/nfs.conf with new version
###### info: Selecting UID from range 100 to 999 ...
###### 
###### info: Adding system user `statd' (UID 111) ...
###### info: Adding new user `statd' (UID 111) with group `nogroup' ...
###### info: Not creating home directory `/var/lib/nfs'.
###### Created symlink /etc/systemd/system/multi-user.target.wants/nfs-client.target → /usr/lib/systemd/system/nfs-client.target.
###### Created symlink /etc/systemd/system/remote-fs.target.wants/nfs-client.target → /usr/lib/systemd/system/nfs-client.target.
###### auth-rpcgss-module.service is a disabled or a static unit, not starting it.
###### nfs-idmapd.service is a disabled or a static unit, not starting it.
###### nfs-utils.service is a disabled or a static unit, not starting it.
###### proc-fs-nfsd.mount is a disabled or a static unit, not starting it.
###### rpc-gssd.service is a disabled or a static unit, not starting it.
###### rpc-statd-notify.service is a disabled or a static unit, not starting it.
###### rpc-statd.service is a disabled or a static unit, not starting it.
###### rpc-svcgssd.service is a disabled or a static unit, not starting it.
###### Setting up nfs-kernel-server (1:2.6.4-3ubuntu5.1) ...
###### Created symlink /etc/systemd/system/nfs-mountd.service.requires/fsidd.service → /usr/lib/systemd/system/fsidd.service.
###### Created symlink /etc/systemd/system/nfs-server.service.requires/fsidd.service → /usr/lib/systemd/system/fsidd.service.
###### Created symlink /etc/systemd/system/nfs-client.target.wants/nfs-blkmap.service → /usr/lib/systemd/system/nfs-blkmap.service.
###### Created symlink /etc/systemd/system/multi-user.target.wants/nfs-server.service → /usr/lib/systemd/system/nfs-server.service.
###### nfs-mountd.service is a disabled or a static unit, not starting it.
###### nfsdcld.service is a disabled or a static unit, not starting it.
###### 
###### Creating config file /etc/exports with new version
###### 
###### Creating config file /etc/default/nfs-kernel-server with new version
###### Processing triggers for man-db (2.12.0-4build2) ...
###### Processing triggers for libc-bin (2.39-0ubuntu8.6) ...
###### 
###### Pending kernel upgrade!
###### Running kernel version:
######   6.8.0-87-generic
###### Diagnostics:
######   The currently running kernel version is not the expected kernel version 6.8.0-90-generic.
###### 
###### Restarting the system to load the new kernel will not be handled automatically, so you should consider rebooting.
###### 
###### Restarting services...
###### 
###### Service restarts being deferred:
######  systemctl restart unattended-upgrades.service
###### 
###### No containers need to be restarted.
###### 
###### No user sessions are running outdated binaries.
###### 
###### No VM guests are running outdated hypervisor (qemu) binaries on this host.
2025-12-20 15:09:19 root: ss -tnplu
###### Netid State  Recv-Q Send-Q         Local Address:Port  Peer Address:PortProcess                                                     
###### udp   UNCONN 0      0                    0.0.0.0:60958      0.0.0.0:*    users:(("rpc.statd",pid=15348,fd=8))                       
###### udp   UNCONN 0      0                 127.0.0.54:53         0.0.0.0:*    users:(("systemd-resolve",pid=916,fd=16))                  
###### udp   UNCONN 0      0              127.0.0.53%lo:53         0.0.0.0:*    users:(("systemd-resolve",pid=916,fd=14))                  
###### udp   UNCONN 0      0      192.168.100.143%ens33:68         0.0.0.0:*    users:(("systemd-network",pid=904,fd=25))                  
###### udp   UNCONN 0      0                    0.0.0.0:111        0.0.0.0:*    users:(("rpcbind",pid=14815,fd=5),("systemd",pid=1,fd=137))
###### udp   UNCONN 0      0                  127.0.0.1:684        0.0.0.0:*    users:(("rpc.statd",pid=15348,fd=5))                       
###### udp   UNCONN 0      0                    0.0.0.0:49975      0.0.0.0:*    users:(("rpc.mountd",pid=15357,fd=8))                      
###### udp   UNCONN 0      0                    0.0.0.0:38448      0.0.0.0:*    users:(("rpc.mountd",pid=15357,fd=12))                     
###### udp   UNCONN 0      0                    0.0.0.0:55081      0.0.0.0:*    users:(("rpc.mountd",pid=15357,fd=4))                      
###### udp   UNCONN 0      0                    0.0.0.0:47050      0.0.0.0:*                                                               
###### udp   UNCONN 0      0                       [::]:52775         [::]:*    users:(("rpc.mountd",pid=15357,fd=14))                     
###### udp   UNCONN 0      0                       [::]:40916         [::]:*    users:(("rpc.mountd",pid=15357,fd=6))                      
###### udp   UNCONN 0      0                       [::]:111           [::]:*    users:(("rpcbind",pid=14815,fd=7),("systemd",pid=1,fd=139))
###### udp   UNCONN 0      0                       [::]:37245         [::]:*                                                               
###### udp   UNCONN 0      0                       [::]:41946         [::]:*    users:(("rpc.mountd",pid=15357,fd=10))                     
###### udp   UNCONN 0      0                       [::]:51097         [::]:*    users:(("rpc.statd",pid=15348,fd=10))                      
###### tcp   LISTEN 0      64                   0.0.0.0:41207      0.0.0.0:*                                                               
###### tcp   LISTEN 0      4096                 0.0.0.0:22         0.0.0.0:*    users:(("sshd",pid=14102,fd=3),("systemd",pid=1,fd=125))   
###### tcp   LISTEN 0      4096                 0.0.0.0:111        0.0.0.0:*    users:(("rpcbind",pid=14815,fd=4),("systemd",pid=1,fd=136))
###### tcp   LISTEN 0      4096              127.0.0.54:53         0.0.0.0:*    users:(("systemd-resolve",pid=916,fd=17))                  
###### tcp   LISTEN 0      4096                 0.0.0.0:42987      0.0.0.0:*    users:(("rpc.mountd",pid=15357,fd=9))                      
###### tcp   LISTEN 0      4096                 0.0.0.0:39717      0.0.0.0:*    users:(("rpc.statd",pid=15348,fd=9))                       
###### tcp   LISTEN 0      4096           127.0.0.53%lo:53         0.0.0.0:*    users:(("systemd-resolve",pid=916,fd=15))                  
###### tcp   LISTEN 0      64                   0.0.0.0:2049       0.0.0.0:*                                                               
###### tcp   LISTEN 0      4096                 0.0.0.0:36783      0.0.0.0:*    users:(("rpc.mountd",pid=15357,fd=5))                      
###### tcp   LISTEN 0      4096                 0.0.0.0:40039      0.0.0.0:*    users:(("rpc.mountd",pid=15357,fd=13))                     
###### tcp   LISTEN 0      64                      [::]:45583         [::]:*                                                               
###### tcp   LISTEN 0      4096                    [::]:32939         [::]:*    users:(("rpc.mountd",pid=15357,fd=11))                     
###### tcp   LISTEN 0      4096                    [::]:45223         [::]:*    users:(("rpc.mountd",pid=15357,fd=7))                      
###### tcp   LISTEN 0      4096                    [::]:22            [::]:*    users:(("sshd",pid=14102,fd=4),("systemd",pid=1,fd=126))   
###### tcp   LISTEN 0      4096                    [::]:111           [::]:*    users:(("rpcbind",pid=14815,fd=6),("systemd",pid=1,fd=138))
###### tcp   LISTEN 0      4096                    [::]:54999         [::]:*    users:(("rpc.mountd",pid=15357,fd=15))                     
###### tcp   LISTEN 0      64                      [::]:2049          [::]:*                                                               
###### tcp   LISTEN 0      4096                    [::]:44343         [::]:*    users:(("rpc.statd",pid=15348,fd=11))                      
2025-12-20 15:19:00 root: mkdir -p /srv/share/upload
2025-12-20 15:19:21 root: chown -R nobody:nogroup /srv/share
2025-12-20 15:19:31 root: chmod 0777 /srv/share/upload
2025-12-20 15:20:32 root: cat
###### /srv/share 192.168.50.11/32(rw,sync,root_squash)
2025-12-20 16:44:20 root: ls /srv/share/upload/
###### check_file
###### command_log.txt
2025-12-20 16:44:45 root: exportfs -s
###### /srv/share  192.168.50.10/32(sync,wdelay,hide,no_subtree_check,sec=sys,rw,secure,root_squash,no_all_squash)
2025-12-20 16:45:01 root: showmount -a 192.168.50.11
###### All mount points on 192.168.50.11:
###### 192.168.50.10:/srv/share
Логи клиентской части:
2025-12-20 15:28:23 root: apt install nfs-common -y
###### 
###### WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
###### 
###### Reading package lists...
###### Building dependency tree...
###### Reading state information...
###### The following additional packages will be installed:
######   keyutils libnfsidmap1 rpcbind
###### Suggested packages:
######   watchdog
###### The following NEW packages will be installed:
######   keyutils libnfsidmap1 nfs-common rpcbind
###### 0 upgraded, 4 newly installed, 0 to remove and 70 not upgraded.
###### Need to get 400 kB of archives.
###### After this operation, 1416 kB of additional disk space will be used.
###### Ign:1 http://fr.archive.ubuntu.com/ubuntu noble-updates/main amd64 libnfsidmap1 amd64 1:2.6.4-3ubuntu5.1
###### Ign:2 http://fr.archive.ubuntu.com/ubuntu noble/main amd64 rpcbind amd64 1.2.6-7ubuntu2
###### Get:3 http://fr.archive.ubuntu.com/ubuntu noble/main amd64 keyutils amd64 1.6.3-3build1 [56.8 kB]
###### Get:4 http://fr.archive.ubuntu.com/ubuntu noble-updates/main amd64 nfs-common amd64 1:2.6.4-3ubuntu5.1 [248 kB]
###### Get:1 http://fr.archive.ubuntu.com/ubuntu noble-updates/main amd64 libnfsidmap1 amd64 1:2.6.4-3ubuntu5.1 [48.3 kB]
###### Get:2 http://fr.archive.ubuntu.com/ubuntu noble/main amd64 rpcbind amd64 1.2.6-7ubuntu2 [46.5 kB]
###### Fetched 400 kB in 56s (7113 B/s)
###### Selecting previously unselected package libnfsidmap1:amd64.
(Reading database ... 125687 files and directories currently installed.)
###### Preparing to unpack .../libnfsidmap1_1%3a2.6.4-3ubuntu5.1_amd64.deb ...
###### Unpacking libnfsidmap1:amd64 (1:2.6.4-3ubuntu5.1) ...
###### Selecting previously unselected package rpcbind.
###### Preparing to unpack .../rpcbind_1.2.6-7ubuntu2_amd64.deb ...
###### Unpacking rpcbind (1.2.6-7ubuntu2) ...
###### Selecting previously unselected package keyutils.
###### Preparing to unpack .../keyutils_1.6.3-3build1_amd64.deb ...
###### Unpacking keyutils (1.6.3-3build1) ...
###### Selecting previously unselected package nfs-common.
###### Preparing to unpack .../nfs-common_1%3a2.6.4-3ubuntu5.1_amd64.deb ...
###### Unpacking nfs-common (1:2.6.4-3ubuntu5.1) ...
###### Setting up libnfsidmap1:amd64 (1:2.6.4-3ubuntu5.1) ...
###### Setting up rpcbind (1.2.6-7ubuntu2) ...
###### Created symlink /etc/systemd/system/multi-user.target.wants/rpcbind.service → /usr/lib/systemd/system/rpcbind.service.
###### Created symlink /etc/systemd/system/sockets.target.wants/rpcbind.socket → /usr/lib/systemd/system/rpcbind.socket.
###### Setting up keyutils (1.6.3-3build1) ...
###### Setting up nfs-common (1:2.6.4-3ubuntu5.1) ...
###### 
###### Creating config file /etc/idmapd.conf with new version
###### 
###### Creating config file /etc/nfs.conf with new version
###### info: Selecting UID from range 100 to 999 ...
###### 
###### info: Adding system user `statd' (UID 111) ...
###### info: Adding new user `statd' (UID 111) with group `nogroup' ...
###### info: Not creating home directory `/var/lib/nfs'.
###### Created symlink /etc/systemd/system/multi-user.target.wants/nfs-client.target → /usr/lib/systemd/system/nfs-client.target.
###### Created symlink /etc/systemd/system/remote-fs.target.wants/nfs-client.target → /usr/lib/systemd/system/nfs-client.target.
###### auth-rpcgss-module.service is a disabled or a static unit, not starting it.
###### nfs-idmapd.service is a disabled or a static unit, not starting it.
###### nfs-utils.service is a disabled or a static unit, not starting it.
###### proc-fs-nfsd.mount is a disabled or a static unit, not starting it.
###### rpc-gssd.service is a disabled or a static unit, not starting it.
###### rpc-statd-notify.service is a disabled or a static unit, not starting it.
###### rpc-statd.service is a disabled or a static unit, not starting it.
###### rpc-svcgssd.service is a disabled or a static unit, not starting it.
###### Processing triggers for man-db (2.12.0-4build2) ...
###### Processing triggers for libc-bin (2.39-0ubuntu8.6) ...
###### 
###### Running kernel seems to be up-to-date.
###### 
###### No services need to be restarted.
###### 
###### No containers need to be restarted.
###### 
###### No user sessions are running outdated binaries.
###### 
###### No VM guests are running outdated hypervisor (qemu) binaries on this host.
2025-12-20 15:41:58 root: echo 192.168.50.11:/srv/share/ /mnt nfs vers=3,noauto,x-systemd.automount 0 0
###### 192.168.50.11:/srv/share/ /mnt nfs vers=3,noauto,x-systemd.automount 0 0
2025-12-20 15:42:15 root: systemctl daemon-reload
2025-12-20 15:42:20 root: systemctl restart remote-fs.target
2025-12-20 15:47:58 root: mount
###### sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
###### proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
###### udev on /dev type devtmpfs (rw,nosuid,relatime,size=4001948k,nr_inodes=1000487,mode=755,inode64)
###### devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000)
###### tmpfs on /run type tmpfs (rw,nosuid,nodev,noexec,relatime,size=808356k,mode=755,inode64)
###### /dev/mapper/ubuntu--vg-ubuntu--lv on / type ext4 (rw,relatime)
###### securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
###### tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev,inode64)
###### tmpfs on /run/lock type tmpfs (rw,nosuid,nodev,noexec,relatime,size=5120k,inode64)
###### cgroup2 on /sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)
###### pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
###### bpf on /sys/fs/bpf type bpf (rw,nosuid,nodev,noexec,relatime,mode=700)
###### systemd-1 on /proc/sys/fs/binfmt_misc type autofs (rw,relatime,fd=32,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=11181)
###### hugetlbfs on /dev/hugepages type hugetlbfs (rw,nosuid,nodev,relatime,pagesize=2M)
###### mqueue on /dev/mqueue type mqueue (rw,nosuid,nodev,noexec,relatime)
###### debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
###### tracefs on /sys/kernel/tracing type tracefs (rw,nosuid,nodev,noexec,relatime)
###### fusectl on /sys/fs/fuse/connections type fusectl (rw,nosuid,nodev,noexec,relatime)
###### configfs on /sys/kernel/config type configfs (rw,nosuid,nodev,noexec,relatime)
###### /dev/sda2 on /boot type ext4 (rw,relatime)
###### otus on /otus type zfs (rw,relatime,xattr,noacl,casesensitive)
###### otus2 on /otus2 type zfs (rw,relatime,xattr,noacl,casesensitive)
###### otus1 on /otus1 type zfs (rw,relatime,xattr,noacl,casesensitive)
###### otus3 on /otus3 type zfs (rw,relatime,xattr,noacl,casesensitive)
###### otus4 on /otus4 type zfs (rw,relatime,xattr,noacl,casesensitive)
###### otus/test on /otus/test type zfs (rw,relatime,xattr,noacl,casesensitive)
###### otus/hometask2 on /otus/hometask2 type zfs (rw,relatime,xattr,noacl,casesensitive)
###### binfmt_misc on /proc/sys/fs/binfmt_misc type binfmt_misc (rw,nosuid,nodev,noexec,relatime)
###### tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,size=808356k,nr_inodes=202089,mode=700,uid=1000,gid=1000,inode64)
###### sunrpc on /run/rpc_pipefs type rpc_pipefs (rw,relatime)
###### systemd-1 on /mnt type autofs (rw,relatime,fd=76,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=70365)
###### 192.168.50.11:/srv/share/ on /mnt type nfs (rw,relatime,vers=3,rsize=1048576,wsize=1048576,namlen=255,hard,proto=tcp,timeo=600,retrans=2,sec=sys,mountaddr=192.168.50.11,mountvers=3,mountport=38448,mountproto=udp,local_lock=none,addr=192.168.50.11)
2025-12-20 15:56:44 root: ls /mnt/upload/
###### check_file
###### command_log.txt
2025-12-20 16:43:05 root: ls /mnt/upload
###### check_file
###### command_log.txt
2025-12-20 16:45:11 root: reboot now
2025-12-20 16:46:03 root: showmount -a 192.168.50.11
###### All mount points on 192.168.50.11:
###### 192.168.50.10:/srv/share
2025-12-20 16:46:13 root: ls /mnt/upload
###### check_file
###### command_log.txt
2025-12-20 16:46:50 root: touch /mnt/upload/final_check
2025-12-20 16:47:06 root: ls /mnt/upload
###### check_file
###### command_log.txt
###### final_check
