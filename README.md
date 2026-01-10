2026-01-10 10:50:40 root: touch /etc/default/watchlog 2026-01-10 10:52:03 root: touch /var/log/watchlog.log 2026-01-10 10:56:45 root: cat /etc/default/watchlog
# Configuration file for my watchlog service
# Place it to /etc/default
# File and word in that file that we will be monit
WORD="ALERT"
LOG=/var/log/watchlog.log

2026-01-10 10:56:53 root: cat /var/log/watchlog.log
test 1
test 2
test 3
ALERT 1
test 4
ALERT 2

2026-01-10 10:58:08 root: cat /opt/watchlog.sh
#!/bin/bash
WORD=$1
LOG=$2
DATE=date
if grep $WORD $LOG &> /dev/null
then
logger "$DATE: I found word, Master!"
else
exit 0
fi

2026-01-10 10:59:01 root: chmod +x /opt/watchlog.sh 2026-01-10 11:00:40 root: cat /etc/systemd/system/watchlog.service
[Unit]
Description=My watchlog service
[Service]
Type=oneshot
EnvironmentFile=/etc/default/watchlog
ExecStart=/opt/watchlog.sh $WORD $LOG

2026-01-10 11:01:19 root: cat /etc/systemd/system/watchlog.timer
[Unit]
Description=Run watchlog script every 30 second
[Timer]
# Run every 30 second
OnUnitActiveSec=30
Unit=watchlog.service
[Install]
WantedBy=multi-user.target

2026-01-10 11:01:47 root: systemctl start watchlog.timer 2026-01-10 11:47:17 root: tail -n 1000 /var/log/syslog | grep word
2026-01-10T11:40:06.372159+03:00 user-VM root: Sat Jan 10 11:40:06 AM MSK 2026: I found word, Master!
2026-01-10T11:40:56.364495+03:00 user-VM root: Sat Jan 10 11:40:56 AM MSK 2026: I found word, Master!
2026-01-10T11:41:52.116955+03:00 user-VM root: Sat Jan 10 11:41:52 AM MSK 2026: I found word, Master!
2026-01-10T11:42:38.363235+03:00 user-VM root: Sat Jan 10 11:42:38 AM MSK 2026: I found word, Master!
2026-01-10T11:43:16.370151+03:00 user-VM root: Sat Jan 10 11:43:16 AM MSK 2026: I found word, Master!
2026-01-10T11:43:52.515005+03:00 user-VM root: Sat Jan 10 11:43:52 AM MSK 2026: I found word, Master!
2026-01-10T11:44:26.366332+03:00 user-VM root: Sat Jan 10 11:44:26 AM MSK 2026: I found word, Master!
2026-01-10T11:44:57.124843+03:00 user-VM root: Sat Jan 10 11:44:57 AM MSK 2026: I found word, Master!
2026-01-10T11:45:36.364035+03:00 user-VM root: Sat Jan 10 11:45:36 AM MSK 2026: I found word, Master!
2026-01-10T11:46:22.516943+03:00 user-VM root: Sat Jan 10 11:46:22 AM MSK 2026: I found word, Master!
2026-01-10T11:46:59.054834+03:00 user-VM root: Sat Jan 10 11:46:59 AM MSK 2026: I found word, Master!

2026-01-10 11:50:29 root: apt install spawn-fcgi php php-cgi php-cli apache2 libapache2-mod-fcgid -y
WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
Reading package lists...
Building dependency tree...
Reading state information...
The following packages were automatically installed and are no longer required:
libgl1-amber-dri libglapi-mesa libllvm17t64 python3-netifaces
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
apache2-bin apache2-data apache2-utils libapache2-mod-php8.3 libapr1t64
libaprutil1-dbd-sqlite3 libaprutil1-ldap libaprutil1t64 php-common php8.3
php8.3-cgi php8.3-cli php8.3-common php8.3-opcache php8.3-readline
Suggested packages:
apache2-doc apache2-suexec-pristine | apache2-suexec-custom php-pear
The following NEW packages will be installed:
apache2 apache2-bin apache2-data apache2-utils libapache2-mod-fcgid
libapache2-mod-php8.3 libapr1t64 libaprutil1-dbd-sqlite3 libaprutil1-ldap
libaprutil1t64 php php-cgi php-cli php-common php8.3 php8.3-cgi php8.3-cli
php8.3-common php8.3-opcache php8.3-readline spawn-fcgi
0 upgraded, 21 newly installed, 0 to remove and 119 not upgraded.
Need to get 8,779 kB of archives.
After this operation, 41.5 MB of additional disk space will be used.
Get:1 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 libapr1t64 amd64 1.7.2-3.1ubuntu0.1 [108 kB]
Get:2 http://us.archive.ubuntu.com/ubuntu noble/main amd64 libaprutil1t64 amd64 1.6.3-1.1ubuntu7 [91.9 kB]
Get:3 http://us.archive.ubuntu.com/ubuntu noble/main amd64 libaprutil1-dbd-sqlite3 amd64 1.6.3-1.1ubuntu7 [11.2 kB]
Get:4 http://us.archive.ubuntu.com/ubuntu noble/main amd64 libaprutil1-ldap amd64 1.6.3-1.1ubuntu7 [9,116 B]
Get:5 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 apache2-bin amd64 2.4.58-1ubuntu8.8 [1,331 kB]
Get:6 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 apache2-data all 2.4.58-1ubuntu8.8 [163 kB]
Get:7 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 apache2-utils amd64 2.4.58-1ubuntu8.8 [97.7 kB]
Get:8 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 apache2 amd64 2.4.58-1ubuntu8.8 [90.2 kB]
Get:9 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 libapache2-mod-fcgid amd64 1:2.3.9-4 [64.9 kB]
Get:10 http://us.archive.ubuntu.com/ubuntu noble/main amd64 php-common all 2:93ubuntu2 [13.9 kB]
Get:11 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3-common amd64 8.3.6-0ubuntu0.24.04.5 [740 kB]
Get:12 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3-opcache amd64 8.3.6-0ubuntu0.24.04.5 [371 kB]
Get:13 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3-readline amd64 8.3.6-0ubuntu0.24.04.5 [13.5 kB]
Get:14 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3-cli amd64 8.3.6-0ubuntu0.24.04.5 [1,915 kB]
Get:15 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 libapache2-mod-php8.3 amd64 8.3.6-0ubuntu0.24.04.5 [1,851 kB]
Get:16 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3-cgi amd64 8.3.6-0ubuntu0.24.04.5 [1,870 kB]
Get:17 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 php8.3 all 8.3.6-0ubuntu0.24.04.5 [9,174 B]
Get:18 http://us.archive.ubuntu.com/ubuntu noble/main amd64 php all 2:8.3+93ubuntu2 [4,076 B]
Get:19 http://us.archive.ubuntu.com/ubuntu noble/main amd64 php-cgi all 2:8.3+93ubuntu2 [4,636 B]
Get:20 http://us.archive.ubuntu.com/ubuntu noble/main amd64 php-cli all 2:8.3+93ubuntu2 [4,584 B]
Get:21 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 spawn-fcgi amd64 1.6.4-2 [14.9 kB]
Fetched 8,779 kB in 2s (3,786 kB/s)
Selecting previously unselected package libapr1t64:amd64.
(Reading database ...

(Reading database ... 5% (Reading database ... 10% (Reading database ... 15% (Reading database ... 20% (Reading database ... 25% (Reading database ... 30% (Reading database ... 35% (Reading database ... 40% (Reading database ... 45% (Reading database ... 50% (Reading database ... 55% (Reading database ... 60% (Reading database ... 65% (Reading database ... 70% (Reading database ... 75% (Reading database ... 80% (Reading database ... 85% (Reading database ... 90% (Reading database ... 95% (Reading database ... 100% (Reading database ... 231738 files and directories currently installed.)
Preparing to unpack .../00-libapr1t64_1.7.2-3.1ubuntu0.1_amd64.deb ...
Unpacking libapr1t64:amd64 (1.7.2-3.1ubuntu0.1) ...
Selecting previously unselected package libaprutil1t64:amd64.
Preparing to unpack .../01-libaprutil1t64_1.6.3-1.1ubuntu7_amd64.deb ...
Unpacking libaprutil1t64:amd64 (1.6.3-1.1ubuntu7) ...
Selecting previously unselected package libaprutil1-dbd-sqlite3:amd64.
Preparing to unpack .../02-libaprutil1-dbd-sqlite3_1.6.3-1.1ubuntu7_amd64.deb ...
Unpacking libaprutil1-dbd-sqlite3:amd64 (1.6.3-1.1ubuntu7) ...
Selecting previously unselected package libaprutil1-ldap:amd64.
Preparing to unpack .../03-libaprutil1-ldap_1.6.3-1.1ubuntu7_amd64.deb ...
Unpacking libaprutil1-ldap:amd64 (1.6.3-1.1ubuntu7) ...
Selecting previously unselected package apache2-bin.
Preparing to unpack .../04-apache2-bin_2.4.58-1ubuntu8.8_amd64.deb ...
Unpacking apache2-bin (2.4.58-1ubuntu8.8) ...
Selecting previously unselected package apache2-data.
Preparing to unpack .../05-apache2-data_2.4.58-1ubuntu8.8_all.deb ...
Unpacking apache2-data (2.4.58-1ubuntu8.8) ...
Selecting previously unselected package apache2-utils.
Preparing to unpack .../06-apache2-utils_2.4.58-1ubuntu8.8_amd64.deb ...
Unpacking apache2-utils (2.4.58-1ubuntu8.8) ...
Selecting previously unselected package apache2.
Preparing to unpack .../07-apache2_2.4.58-1ubuntu8.8_amd64.deb ...
Unpacking apache2 (2.4.58-1ubuntu8.8) ...
Selecting previously unselected package libapache2-mod-fcgid.
Preparing to unpack .../08-libapache2-mod-fcgid_1%3a2.3.9-4_amd64.deb ...
Unpacking libapache2-mod-fcgid (1:2.3.9-4) ...
Selecting previously unselected package php-common.
Preparing to unpack .../09-php-common_2%3a93ubuntu2_all.deb ...
Unpacking php-common (2:93ubuntu2) ...
Selecting previously unselected package php8.3-common.
Preparing to unpack .../10-php8.3-common_8.3.6-0ubuntu0.24.04.5_amd64.deb ...
Unpacking php8.3-common (8.3.6-0ubuntu0.24.04.5) ...
Selecting previously unselected package php8.3-opcache.
Preparing to unpack .../11-php8.3-opcache_8.3.6-0ubuntu0.24.04.5_amd64.deb ...
Unpacking php8.3-opcache (8.3.6-0ubuntu0.24.04.5) ...
Selecting previously unselected package php8.3-readline.
Preparing to unpack .../12-php8.3-readline_8.3.6-0ubuntu0.24.04.5_amd64.deb ...
Unpacking php8.3-readline (8.3.6-0ubuntu0.24.04.5) ...
Selecting previously unselected package php8.3-cli.
Preparing to unpack .../13-php8.3-cli_8.3.6-0ubuntu0.24.04.5_amd64.deb ...
Unpacking php8.3-cli (8.3.6-0ubuntu0.24.04.5) ...
Selecting previously unselected package libapache2-mod-php8.3.
Preparing to unpack .../14-libapache2-mod-php8.3_8.3.6-0ubuntu0.24.04.5_amd64.deb ...
Unpacking libapache2-mod-php8.3 (8.3.6-0ubuntu0.24.04.5) ...
Selecting previously unselected package php8.3-cgi.
Preparing to unpack .../15-php8.3-cgi_8.3.6-0ubuntu0.24.04.5_amd64.deb ...
Unpacking php8.3-cgi (8.3.6-0ubuntu0.24.04.5) ...
Selecting previously unselected package php8.3.
Preparing to unpack .../16-php8.3_8.3.6-0ubuntu0.24.04.5_all.deb ...
Unpacking php8.3 (8.3.6-0ubuntu0.24.04.5) ...
Selecting previously unselected package php.
Preparing to unpack .../17-php_2%3a8.3+93ubuntu2_all.deb ...
Unpacking php (2:8.3+93ubuntu2) ...
Selecting previously unselected package php-cgi.
Preparing to unpack .../18-php-cgi_2%3a8.3+93ubuntu2_all.deb ...
Unpacking php-cgi (2:8.3+93ubuntu2) ...
Selecting previously unselected package php-cli.
Preparing to unpack .../19-php-cli_2%3a8.3+93ubuntu2_all.deb ...
Unpacking php-cli (2:8.3+93ubuntu2) ...
Selecting previously unselected package spawn-fcgi.
Preparing to unpack .../20-spawn-fcgi_1.6.4-2_amd64.deb ...
Unpacking spawn-fcgi (1.6.4-2) ...
Setting up php-common (2:93ubuntu2) ...
Created symlink /etc/systemd/system/timers.target.wants/phpsessionclean.timer → /usr/lib/systemd/system/phpsessionclean.timer.
Setting up php8.3-common (8.3.6-0ubuntu0.24.04.5) ...
Creating config file /etc/php/8.3/mods-available/calendar.ini with new version
Creating config file /etc/php/8.3/mods-available/ctype.ini with new version
Creating config file /etc/php/8.3/mods-available/exif.ini with new version
Creating config file /etc/php/8.3/mods-available/fileinfo.ini with new version
Creating config file /etc/php/8.3/mods-available/ffi.ini with new version
Creating config file /etc/php/8.3/mods-available/ftp.ini with new version
Creating config file /etc/php/8.3/mods-available/gettext.ini with new version
Creating config file /etc/php/8.3/mods-available/iconv.ini with new version
Creating config file /etc/php/8.3/mods-available/pdo.ini with new version
Creating config file /etc/php/8.3/mods-available/phar.ini with new version
Creating config file /etc/php/8.3/mods-available/posix.ini with new version
Creating config file /etc/php/8.3/mods-available/shmop.ini with new version
Creating config file /etc/php/8.3/mods-available/sockets.ini with new version
Creating config file /etc/php/8.3/mods-available/sysvmsg.ini with new version
Creating config file /etc/php/8.3/mods-available/sysvsem.ini with new version
Creating config file /etc/php/8.3/mods-available/sysvshm.ini with new version
Creating config file /etc/php/8.3/mods-available/tokenizer.ini with new version
Setting up php8.3-readline (8.3.6-0ubuntu0.24.04.5) ...
Creating config file /etc/php/8.3/mods-available/readline.ini with new version
Setting up libapr1t64:amd64 (1.7.2-3.1ubuntu0.1) ...
Setting up apache2-data (2.4.58-1ubuntu8.8) ...
Setting up spawn-fcgi (1.6.4-2) ...
Setting up php8.3-opcache (8.3.6-0ubuntu0.24.04.5) ...
Creating config file /etc/php/8.3/mods-available/opcache.ini with new version
Setting up libaprutil1t64:amd64 (1.6.3-1.1ubuntu7) ...
Setting up libaprutil1-ldap:amd64 (1.6.3-1.1ubuntu7) ...
Setting up php8.3-cli (8.3.6-0ubuntu0.24.04.5) ...
update-alternatives: using /usr/bin/php8.3 to provide /usr/bin/php (php) in auto mode
update-alternatives: using /usr/bin/phar8.3 to provide /usr/bin/phar (phar) in auto mode
update-alternatives: using /usr/bin/phar.phar8.3 to provide /usr/bin/phar.phar (phar.phar) in auto mode
Creating config file /etc/php/8.3/cli/php.ini with new version
Setting up libaprutil1-dbd-sqlite3:amd64 (1.6.3-1.1ubuntu7) ...
Setting up php8.3-cgi (8.3.6-0ubuntu0.24.04.5) ...
update-alternatives: using /usr/bin/php-cgi8.3 to provide /usr/bin/php-cgi (php-cgi) in auto mode
update-alternatives: using /usr/lib/cgi-bin/php8.3 to provide /usr/lib/cgi-bin/php (php-cgi-bin) in auto mode
Creating config file /etc/php/8.3/cgi/php.ini with new version
Setting up php8.3 (8.3.6-0ubuntu0.24.04.5) ...
Setting up php-cli (2:8.3+93ubuntu2) ...
update-alternatives: using /usr/bin/php.default to provide /usr/bin/php (php) in auto mode
update-alternatives: using /usr/bin/phar.default to provide /usr/bin/phar (phar) in auto mode
update-alternatives: using /usr/bin/phar.phar.default to provide /usr/bin/phar.phar (phar.phar) in auto mode
Setting up php-cgi (2:8.3+93ubuntu2) ...
update-alternatives: using /usr/bin/php-cgi.default to provide /usr/bin/php-cgi (php-cgi) in auto mode
update-alternatives: using /usr/lib/cgi-bin/php.default to provide /usr/lib/cgi-bin/php (php-cgi-bin) in auto mode
Setting up apache2-utils (2.4.58-1ubuntu8.8) ...
Setting up php (2:8.3+93ubuntu2) ...
Setting up apache2-bin (2.4.58-1ubuntu8.8) ...
Setting up libapache2-mod-php8.3 (8.3.6-0ubuntu0.24.04.5) ...
Package apache2 is not configured yet. Will defer actions by package libapache2-mod-php8.3.
Creating config file /etc/php/8.3/apache2/php.ini with new version
No module matches
Setting up libapache2-mod-fcgid (1:2.3.9-4) ...
Package apache2 is not configured yet. Will defer actions by package libapache2-mod-fcgid.
Setting up apache2 (2.4.58-1ubuntu8.8) ...
Enabling module mpm_event.
Enabling module authz_core.
Enabling module authz_host.
Enabling module authn_core.
Enabling module auth_basic.
Enabling module access_compat.
Enabling module authn_file.
Enabling module authz_user.
Enabling module alias.
Enabling module dir.
Enabling module autoindex.
Enabling module env.
Enabling module mime.
Enabling module negotiation.
Enabling module setenvif.
Enabling module filter.
Enabling module deflate.
Enabling module status.
Enabling module reqtimeout.
Enabling conf charset.
Enabling conf localized-error-pages.
Enabling conf other-vhosts-access-log.
Enabling conf security.
Enabling conf serve-cgi-bin.
Enabling site 000-default.
info: Switch to mpm prefork for package libapache2-mod-php8.3
Module mpm_event disabled.
Enabling module mpm_prefork.
info: Executing deferred 'a2enmod php8.3' for package libapache2-mod-php8.3
Enabling module php8.3.
info: Executing deferred 'a2enmod fcgid' for package libapache2-mod-fcgid
Enabling module fcgid.
Created symlink /etc/systemd/system/multi-user.target.wants/apache2.service → /usr/lib/systemd/system/apache2.service.
Created symlink /etc/systemd/system/multi-user.target.wants/apache-htcacheclean.service → /usr/lib/systemd/system/apache-htcacheclean.service.
Processing triggers for ufw (0.36.2-6) ...
Processing triggers for man-db (2.12.0-4build2) ...
Processing triggers for libc-bin (2.39-0ubuntu8.6) ...
Processing triggers for php8.3-cli (8.3.6-0ubuntu0.24.04.5) ...
Processing triggers for php8.3-cgi (8.3.6-0ubuntu0.24.04.5) ...
Processing triggers for libapache2-mod-php8.3 (8.3.6-0ubuntu0.24.04.5) ...

2026-01-10 18:53:32 root: touch /etc/spawn-fcgi/fcgi.conf
touch: cannot touch '/etc/spawn-fcgi/fcgi.conf': No such file or directory

2026-01-10 18:53:48 root: mkdir /etc/spawn-fcgi 2026-01-10 18:53:53 root: touch /etc/spawn-fcgi/fcgi.conf 2026-01-10 18:58:42 root: touch /etc/systemd/system/spawn-fcgi.service 2026-01-10 18:59:29 root: systemctl start spawn-fcgi 2026-01-10 19:00:21 root: systemctl status spawn-fcgi
● spawn-fcgi.service - Spawn-fcgi startup service by Otus
Loaded: loaded (/etc/systemd/system/spawn-fcgi.service; disabled; preset: enabled)
Active: active (running) since Sat 2026-01-10 18:59:29 MSK; 52s ago
Main PID: 31634 (php-cgi)
Tasks: 33 (limit: 9353)
Memory: 14.2M (peak: 14.6M)
CPU: 29ms
CGroup: /system.slice/spawn-fcgi.service
├─31634 /usr/bin/php-cgi
├─31642 /usr/bin/php-cgi
├─31643 /usr/bin/php-cgi
├─31644 /usr/bin/php-cgi
├─31645 /usr/bin/php-cgi
├─31646 /usr/bin/php-cgi
├─31647 /usr/bin/php-cgi
├─31648 /usr/bin/php-cgi
├─31649 /usr/bin/php-cgi
├─31650 /usr/bin/php-cgi
├─31652 /usr/bin/php-cgi
├─31653 /usr/bin/php-cgi
├─31654 /usr/bin/php-cgi
├─31655 /usr/bin/php-cgi
├─31656 /usr/bin/php-cgi
├─31657 /usr/bin/php-cgi
├─31658 /usr/bin/php-cgi
├─31659 /usr/bin/php-cgi
├─31660 /usr/bin/php-cgi
├─31661 /usr/bin/php-cgi
├─31663 /usr/bin/php-cgi
├─31664 /usr/bin/php-cgi
├─31665 /usr/bin/php-cgi
├─31666 /usr/bin/php-cgi
├─31667 /usr/bin/php-cgi
├─31668 /usr/bin/php-cgi
├─31669 /usr/bin/php-cgi
├─31670 /usr/bin/php-cgi
├─31671 /usr/bin/php-cgi
├─31672 /usr/bin/php-cgi
├─31673 /usr/bin/php-cgi
├─31674 /usr/bin/php-cgi
└─31675 /usr/bin/php-cgi
Jan 10 18:59:29 user-VM systemd[1]: Started spawn-fcgi.service - Spawn-fcgi startup service by Otus.

2026-01-10 19:00:44 root: apt install nginx -y
WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
Reading package lists...
Building dependency tree...
Reading state information...
The following packages were automatically installed and are no longer required:
libgl1-amber-dri libglapi-mesa libllvm17t64 python3-netifaces
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
nginx-common
Suggested packages:
fcgiwrap nginx-doc
The following NEW packages will be installed:
nginx nginx-common
0 upgraded, 2 newly installed, 0 to remove and 119 not upgraded.
Need to get 564 kB of archives.
After this operation, 1,596 kB of additional disk space will be used.
Get:1 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 nginx-common all 1.24.0-2ubuntu7.5 [43.4 kB]
Get:2 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 nginx amd64 1.24.0-2ubuntu7.5 [520 kB]
Preconfiguring packages ...
Fetched 564 kB in 1s (472 kB/s)
Selecting previously unselected package nginx-common.
(Reading database ...

(Reading database ... 5% (Reading database ... 10% (Reading database ... 15% (Reading database ... 20% (Reading database ... 25% (Reading database ... 30% (Reading database ... 35% (Reading database ... 40% (Reading database ... 45% (Reading database ... 50% (Reading database ... 55% (Reading database ... 60% (Reading database ... 65% (Reading database ... 70% (Reading database ... 75% (Reading database ... 80% (Reading database ... 85% (Reading database ... 90% (Reading database ... 95% (Reading database ... 100% (Reading database ... 232628 files and directories currently installed.)
Preparing to unpack .../nginx-common_1.24.0-2ubuntu7.5_all.deb ...
Unpacking nginx-common (1.24.0-2ubuntu7.5) ...
Selecting previously unselected package nginx.
Preparing to unpack .../nginx_1.24.0-2ubuntu7.5_amd64.deb ...
Unpacking nginx (1.24.0-2ubuntu7.5) ...
Setting up nginx-common (1.24.0-2ubuntu7.5) ...
Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /usr/lib/systemd/system/nginx.service.
Could not execute systemctl: at /usr/bin/deb-systemd-invoke line 148.
Setting up nginx (1.24.0-2ubuntu7.5) ...
Not attempting to start NGINX, port 80 is already in use.
Processing triggers for man-db (2.12.0-4build2) ...
Processing triggers for ufw (0.36.2-6) ...

2026-01-10 19:13:09 root: touch /etc/systemd/system/nginx@.service 2026-01-10 19:14:10 root: cp /etc/nginx/nginx.conf /etc/nginx/nginx-first.conf 2026-01-10 19:14:14 root: cp /etc/nginx/nginx.conf /etc/nginx/nginx-second.conf 2026-01-10 19:19:25 root: systemctl start nginx@first 2026-01-10 19:19:35 root: systemctl start nginx@second 2026-01-10 19:20:12 root: systemctl status nginx@second
● nginx@second.service - A high performance web server and a reverse proxy server
Loaded: loaded (/etc/systemd/system/nginx@.service; disabled; preset: enabled)
Active: active (running) since Sat 2026-01-10 19:19:35 MSK; 36s ago
Docs: man:nginx(8)
Process: 32606 ExecStartPre=/usr/sbin/nginx -t -c /etc/nginx/nginx-second.conf -q -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
Process: 32612 ExecStart=/usr/sbin/nginx -c /etc/nginx/nginx-second.conf -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
Main PID: 32613 (nginx)
Tasks: 5 (limit: 9353)
Memory: 3.7M (peak: 4.4M)
CPU: 14ms
CGroup: /system.slice/system-nginx.slice/nginx@second.service
├─32613 "nginx: master process /usr/sbin/nginx -c /etc/nginx/nginx-second.conf -g daemon on; master_process on;"
├─32614 "nginx: worker process"
├─32615 "nginx: worker process"
├─32616 "nginx: worker process"
└─32617 "nginx: worker process"
Jan 10 19:19:35 user-VM systemd[1]: Starting nginx@second.service - A high performance web server and a reverse proxy server...
Jan 10 19:19:35 user-VM systemd[1]: Started nginx@second.service - A high performance web server and a reverse proxy server.

2026-01-10 19:21:13 root: ss -tnulp | grep nginx
tcp LISTEN 0 511 0.0.0.0:9002 0.0.0.0:* users:(("nginx",pid=32617,fd=5),("nginx",pid=32616,fd=5),("nginx",pid=32615,fd=5),("nginx",pid=32614,fd=5),("nginx",pid=32613,fd=5))
tcp LISTEN 0 511 0.0.0.0:9001 0.0.0.0:* users:(("nginx",pid=32592,fd=5),("nginx",pid=32591,fd=5),("nginx",pid=32590,fd=5),("nginx",pid=32589,fd=5),("nginx",pid=32588,fd=5))

2026-01-10 19:22:46 ps afx | grep nginx
32803 pts/2 S+ 0:00 | _ grep --color=auto nginx
32588 ? Ss 0:00 nginx: master process /usr/sbin/nginx -c /etc/nginx/nginx-first.conf -g daemon on; master_process on;
32589 ? S 0:00 _ nginx: worker process
32590 ? S 0:00 _ nginx: worker process
32591 ? S 0:00 _ nginx: worker process
32592 ? S 0:00 _ nginx: worker process
32613 ? Ss 0:00 nginx: master process /usr/sbin/nginx -c /etc/nginx/nginx-second.conf -g daemon on; master_process on;
32614 ? S 0:00 _ nginx: worker process
32615 ? S 0:00 _ nginx: worker process
32616 ? S 0:00 _ nginx: worker process
32617 ? S 0:00 _ nginx: worker process
