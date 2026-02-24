# Цель домашнего задания
Научиться создавать пользователей и добавлять им ограничения

2026-02-20 19:15:36 user: sudo useradd -m -s /bin/bash otus
###### useradd: user 'otus' already exists
2026-02-20 19:16:00 user: sudo useradd -m -s /bin/bash otusadm
###### useradd: user 'otusadm' already exists
2026-02-20 19:16:10 user: echo otus:Otus2022!
###### otus:Otus2022!
2026-02-20 19:16:18 user: echo otusadm:Otus2022!
###### otusadm:Otus2022!
2026-02-20 19:16:43 user: sudo groupadd admin
###### groupadd: group 'admin' already exists
2026-02-20 19:16:56 user: sudo usermod -aG admin root
2026-02-20 19:17:27 user: sudo usermod -aG admin user
2026-02-20 19:17:36 user: sudo usermod -aG admin otusadm
2026-02-20 19:17:45 user: getent group admin
###### admin:x:1005:root,user,otusadm
2026-02-20 19:17:58 user: sudo tee /usr/local/bin/login.sh
###### #!/bin/bash
###### if [ $(LC_ALL=C date +%a) = "Sat" ] || [ $(LC_ALL=C date +%a) = "Sun" ]; then
######     if getent group admin | grep -qw "$PAM_USER"; then
######         exit 0
######     else
######         exit 1
######     fi
###### else
######     exit 0
###### fi
2026-02-20 19:18:08 user: sudo chmod +x /usr/local/bin/login.sh
2026-02-20 19:18:20 user: sudo sed -i /^@include common-auth/a auth required pam_exec.so debug /usr/local/bin/login.sh /etc/pam.d/sshd
###### sed: -e expression #1, char 10: unterminated address regex
2026-02-20 19:18:30 user: grep -A2 @include common-auth /etc/pam.d/sshd
###### grep: common-auth: No such file or directory
###### /etc/pam.d/sshd:@include common-auth
###### /etc/pam.d/sshd-auth required pam_exec.so debug /usr/local/bin/login.sh
###### /etc/pam.d/sshd-# Disallow non-root logins when /etc/nologin exists.
###### --
###### /etc/pam.d/sshd:@include common-account
###### /etc/pam.d/sshd-
###### /etc/pam.d/sshd-# SELinux needs to be the first session rule.  This ensures that any
###### --
###### /etc/pam.d/sshd:@include common-session
###### /etc/pam.d/sshd-
###### /etc/pam.d/sshd-# Print the message of the day upon successful login.
###### --
###### /etc/pam.d/sshd:@include common-password
2026-02-20 19:18:42 user: sudo systemctl restart sshd
2026-02-20 19:18:51 user: sudo systemctl stop systemd-timesyncd
2026-02-20 19:19:00 user: sudo date -s 2024-01-06 12:00:00
###### date: the argument ‘12:00:00’ lacks a leading '+';
###### when using an option to specify date(s), any non-option
###### argument must be a format string beginning with '+'
###### Try 'date --help' for more information.
2024-01-06 12:00:08 user: sudo date --set=2024-01-06 12:00:00
###### date: the argument ‘12:00:00’ lacks a leading '+';
###### when using an option to specify date(s), any non-option
###### argument must be a format string beginning with '+'
###### Try 'date --help' for more information.
2024-01-06 12:01:38 user: date
###### Sat Jan  6 12:01:38 PM UTC 2024
2024-01-06 12:01:45 user: date +%a
###### Sat
2024-01-06 12:01:54 user: ssh otus@localhost
###### Permission denied, please try again.
###### Permission denied, please try again.
###### otus@localhost: Permission denied (publickey,password).
2024-01-06 12:02:42 user: ssh otusadm@localhost
###### Welcome to Ubuntu 24.04.4 LTS (GNU/Linux 6.8.0-100-generic aarch64)
###### 
######  * Documentation:  https://help.ubuntu.com
######  * Management:     https://landscape.canonical.com
######  * Support:        https://ubuntu.com/pro
###### 
######  System information as of Fri Feb 20 07:10:07 PM UTC 2026
###### 
######   System load:             0.04
######   Usage of /:              32.6% of 29.82GB
######   Memory usage:            19%
######   Swap usage:              0%
######   Processes:               140
######   Users logged in:         1
######   IPv4 address for enp0s5: 10.211.55.4
######   IPv6 address for enp0s5: fdb2:2c26:f4e4:0:21c:42ff:fef1:25a3
###### 
######  * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
######    just raised the bar for easy, resilient and secure K8s cluster deployment.
###### 
######    https://ubuntu.com/engage/secure-kubernetes-at-the-edge
###### 
###### Expanded Security Maintenance for Applications is not enabled.
###### 
###### 8 updates can be applied immediately.
###### 3 of these updates are standard security updates.
###### To see these additional updates run: apt list --upgradable
###### 
###### Enable ESM Apps to receive additional future security updates.
###### See https://ubuntu.com/esm or run: sudo pro status
###### 
###### 
###### Last login: Sat Jan  6 12:22:57 2024 from 127.0.0.1

###### To run a command as administrator (user "root"), use "sudo <command>".
###### See "man sudo_root" for details.
###### 
###### [?2004h]0;otusadm@user: ~[01;32motusadm@user[00m:[01;34m~[00m$ logcmd whoami
###### [?2004l
logcmd: command not found
###### [?2004h]0;otusadm@user: ~[01;32motusadm@user[00m:[01;34m~[00m$ exit
###### [?2004l
logout
###### Connection to localhost closed.
2024-01-06 12:03:13 user: sudo systemctl start systemd-timesyncd
2026-02-20 19:24:08 user: date
###### Fri Feb 20 07:24:08 PM UTC 2026
2026-02-20 19:24:19 user: sudo su - otus
2026-02-20 19:24:32 user: docker ps
###### CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
2026-02-20 19:24:43 user: newgrp docker
2026-02-20 19:25:05 user: sudo systemctl restart docker
2026-02-20 19:25:16 user: exit
