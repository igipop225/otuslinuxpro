Цель домашнего задания
Диагностировать проблемы и модифицировать политики SELinux для корректной работы приложений, если это требуется.

Описание домашнего задания
1. Запустить Nginx на нестандартном порту 3-мя разными способами:
переключатели setsebool;
добавление нестандартного порта в имеющийся тип;
формирование и установка модуля SELinux.
К сдаче:
README с описанием каждого решения (скриншоты и демонстрация приветствуются). 

2. Обеспечить работоспособность приложения при включенном selinux.
развернуть приложенный стенд https://github.com/Nickmob/vagrant_selinux_dns_problems; 
выяснить причину неработоспособности механизма обновления зоны (см. README);
предложить решение (или решения) для данной проблемы;
выбрать одно из решений для реализации, предварительно обосновав выбор;
реализовать выбранное решение и продемонстрировать его работоспособность.

### 1:
vagrant up --provider=virtualbox
 selinux:         CPU: 11ms
    selinux:
    selinux: Feb 10 21:28:35 selinux systemd[1]: Starting The nginx HTTP and reverse proxy server...
    selinux: Feb 10 21:28:35 selinux nginx[6644]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
    selinux: Feb 10 21:28:35 selinux nginx[6644]: nginx: [emerg] bind() to 0.0.0.0:4881 failed (13: Permission denied)
    selinux: Feb 10 21:28:35 selinux nginx[6644]: nginx: configuration file /etc/nginx/nginx.conf test failed
    selinux: Feb 10 21:28:35 selinux systemd[1]: nginx.service: Control process exited, code=exited, status=1/FAILURE
    selinux: Feb 10 21:28:35 selinux systemd[1]: nginx.service: Failed with result 'exit-code'.
    selinux: Feb 10 21:28:35 selinux systemd[1]: Failed to start The nginx HTTP and reverse proxy server.
vagrant ssh
[vagrant@selinux ~]$ sudo su
[root@selinux vagrant]# systemctl status firewalld
○ firewalld.service - firewalld - dynamic firewall daemon
     Loaded: loaded (/usr/lib/systemd/system/firewalld.service; disabled; preset: enabled)
     Active: inactive (dead)
       Docs: man:firewalld(1)
[root@selinux vagrant]# nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
[root@selinux vagrant]# getenforce
Enforcing
[root@selinux vagrant]# grep 4881 /var/log/audit/audit.log
type=AVC msg=audit(1770758915.670:713): avc:  denied  { name_bind } for  pid=6644 comm="nginx" src=4881 scontext=system_u:system_r:httpd_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0
[root@selinux vagrant]# grep 1770758915.670:713 /var/log/audit/audit.log | audit2why
type=AVC msg=audit(1770758915.670:713): avc:  denied  { name_bind } for  pid=6644 comm="nginx" src=4881 scontext=system_u:system_r:httpd_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0

        Was caused by:
        The boolean nis_enabled was set incorrectly.
        Description:
        Allow nis to enabled

        Allow access by executing:
        # setsebool -P nis_enabled 1
[root@selinux vagrant]# setsebool -P nis_enabled on
[root@selinux vagrant]# systemctl restart nginx
[root@selinux vagrant]# systemctl status nginx
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: active (running) since Tue 2026-02-10 21:39:58 UTC; 8s ago
    Process: 9006 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
    Process: 9007 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
    Process: 9009 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
   Main PID: 9010 (nginx)
      Tasks: 3 (limit: 11984)
     Memory: 2.9M
        CPU: 25ms
     CGroup: /system.slice/nginx.service
             ├─9010 "nginx: master process /usr/sbin/nginx"
             ├─9011 "nginx: worker process"
             └─9012 "nginx: worker process"

Feb 10 21:39:58 selinux systemd[1]: Starting The nginx HTTP and reverse proxy server...
Feb 10 21:39:58 selinux nginx[9007]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
Feb 10 21:39:58 selinux nginx[9007]: nginx: configuration file /etc/nginx/nginx.conf test is successful
Feb 10 21:39:58 selinux systemd[1]: Started The nginx HTTP and reverse proxy server.
[root@selinux vagrant]# getsebool -a | grep nis_enabled
nis_enabled --> on
[root@selinux vagrant]# setsebool -P nis_enabled off
[root@selinux vagrant]# systemctl restart nginx
Job for nginx.service failed because the control process exited with error code.
See "systemctl status nginx.service" and "journalctl -xeu nginx.service" for details.
[root@selinux vagrant]# semanage port -l | grep http
http_cache_port_t              tcp      8080, 8118, 8123, 10001-10010
http_cache_port_t              udp      3130
http_port_t                    tcp      80, 81, 443, 488, 8008, 8009, 8443, 9000
pegasus_http_port_t            tcp      5988
pegasus_https_port_t           tcp      5989
[root@selinux vagrant]# semanage port -a -t http_port_t -p tcp 4881
[root@selinux vagrant]# semanage port -l | grep http
http_cache_port_t              tcp      8080, 8118, 8123, 10001-10010
http_cache_port_t              udp      3130
http_port_t                    tcp      4881, 80, 81, 443, 488, 8008, 8009, 8443, 9000
pegasus_http_port_t            tcp      5988
pegasus_https_port_t           tcp      5989
[root@selinux vagrant]# systemctl restart nginx
[root@selinux vagrant]# systemctl status nginx
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: active (running) since Tue 2026-02-10 21:43:19 UTC; 31s ago
    Process: 9065 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
    Process: 9066 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
    Process: 9067 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
   Main PID: 9068 (nginx)
      Tasks: 3 (limit: 11984)
     Memory: 2.9M
        CPU: 25ms
     CGroup: /system.slice/nginx.service
             ├─9068 "nginx: master process /usr/sbin/nginx"
             ├─9069 "nginx: worker process"
             └─9070 "nginx: worker process"

Feb 10 21:43:19 selinux systemd[1]: Starting The nginx HTTP and reverse proxy server...
Feb 10 21:43:19 selinux nginx[9066]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
Feb 10 21:43:19 selinux nginx[9066]: nginx: configuration file /etc/nginx/nginx.conf test is successful
Feb 10 21:43:19 selinux systemd[1]: Started The nginx HTTP and reverse proxy server.
[root@selinux vagrant]# semanage port -d -t http_port_t -p tcp 4881
[root@selinux vagrant]# semanage port -l | grep  http_port_t
http_port_t                    tcp      80, 81, 443, 488, 8008, 8009, 8443, 9000
pegasus_http_port_t            tcp      5988
[root@selinux vagrant]# systemctl restart nginx
Job for nginx.service failed because the control process exited with error code.
See "systemctl status nginx.service" and "journalctl -xeu nginx.service" for details.
[root@selinux vagrant]# grep nginx /var/log/audit/audit.log | audit2allow -M nginx
******************** IMPORTANT ***********************
To make this policy package active, execute:

semodule -i nginx.pp
[root@selinux vagrant]# semodule -i nginx.pp
[root@selinux vagrant]# systemctl start nginx
[root@selinux vagrant]# systemctl status nginx
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: active (running) since Tue 2026-02-10 21:46:56 UTC; 5s ago
    Process: 9113 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
    Process: 9114 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
    Process: 9115 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
   Main PID: 9116 (nginx)
      Tasks: 3 (limit: 11984)
     Memory: 2.9M
        CPU: 25ms
     CGroup: /system.slice/nginx.service
             ├─9116 "nginx: master process /usr/sbin/nginx"
             ├─9117 "nginx: worker process"
             └─9118 "nginx: worker process"

Feb 10 21:46:56 selinux systemd[1]: Starting The nginx HTTP and reverse proxy server...
Feb 10 21:46:56 selinux nginx[9114]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
Feb 10 21:46:56 selinux nginx[9114]: nginx: configuration file /etc/nginx/nginx.conf test is successful
Feb 10 21:46:56 selinux systemd[1]: Started The nginx HTTP and reverse proxy server.
[root@selinux vagrant]# semodule -r nginx
libsemanage.semanage_direct_remove_key: Removing last nginx module (no other nginx module exists at another priority).
### 2:
$ git clone https://github.com/Nickmob/vagrant_selinux_dns_problems.git
Cloning into 'vagrant_selinux_dns_problems'...
remote: Enumerating objects: 32, done.
remote: Counting objects: 100% (32/32), done.
remote: Compressing objects: 100% (21/21), done.
Receiving objects: 100% (32/32), 7.23 KiB | 3.62 MiB/s, done.
Resolving deltas: 100% (9/9), done.
remote: Total 32 (delta 9), reused 29 (delta 9), pack-reused 0 (from 0)
$ vagrant up
$ vagrant status
Current machine states:

ns01                      running (virtualbox)
client                    running (virtualbox)

This environment represents multiple VMs. The VMs are all listed
above with their current state. For more information about a specific
VM, run `vagrant status NAME`.
$ vagrant ssh client
[vagrant@client ~]$ nsupdate -k /etc/named.zonetransfer.key
> server 192.168.50.10
> zone ddns.lab
> update add www.ddns.lab. 60 A 192.168.50.15
> send
update failed: SERVFAIL
> quit
[vagrant@client ~]$ sudo su
[root@client ~]# cat /var/log/audit/audit.log | audit2why

$ vagrant ssh ns01 
[vagrant@ns01 ~]$ sudo su 
[root@ns01 ~]# 
[root@ns01 ~]# 
[root@ns01 ~]# cat /var/log/audit/audit.log | audit2why
type=AVC msg=audit(1653151224.005:015): avc:  denied  { write } for  pid=6159 comm="isc-net-0001" name="dynamic" dev="sda4" ino=34048387 scontext=system_u:system_r:named_t:s0 tcontext=unconfined_u:object_r:named_conf_t:s0 tclass=dir permissive=0


	Was caused by:
		Missing type enforcement (TE) allow rule.


		You can use audit2allow to generate a loadable module to allow this access.
[root@ns01 ~]# ls -alZ /var/named/named.localhost
-rw-r-----. 1 root named system_u:object_r:named_zone_t:s0 152 Feb 10 22:20 /var/named/named.localhost
[root@ns01 ~]# ls -laZ /etc/named
drw-rwx---. root named system_u:object_r:named_conf_t:s0       .
drwxr-xr-x. root root  system_u:object_r:named_conf_t:s0       ..
drw-rwx---. root named unconfined_u:object_r:named_conf_t:s0   dynamic
-rw-rw----. root named system_u:object_r:named_conf_t:s0       named.50.168.192.rev
-rw-rw----. root named system_u:object_r:named_conf_t:s0       named.dns.lab
-rw-rw----. root named system_u:object_r:named_conf_t:s0       named.dns.lab.view1
-rw-rw----. root named system_u:object_r:named_conf_t:s0       named.newdns.lab
[root@ns01 ~]# sudo semanage fcontext -l | grep named
/etc/rndc.*              regular file       system_u:object_r:named_conf_t:s0 
/var/named(/.*)?         all files          system_u:object_r:named_zone_t:s0 
[root@ns01 ~]# sudo chcon -R -t named_zone_t /etc/named
[root@ns01 ~]# 
[root@ns01 ~]# ls -laZ /etc/named
drw-rwx---. root named system_u:object_r:named_zone_t:s0 .
drwxr-xr-x. root root  system_u:object_r:etc_t:s0       ..
drw-rwx---. root named unconfined_u:object_r:named_zone_t:s0 dynamic
-rw-rw----. root named system_u:object_r:named_zone_t:s0 named.50.168.192.rev
-rw-rw----. root named system_u:object_r:named_zone_t:s0 named.dns.lab
-rw-rw----. root named system_u:object_r:named_zone_t:s0 named.dns.lab.view1
-rw-rw----. root named system_u:object_r:named_zone_t:s0 named.newdns.lab

[vagrant@client ~]$ nsupdate -k /etc/named.zonetransfer.key
> server 192.168.50.10
> zone ddns.lab
> update add www.ddns.lab. 60 A 192.168.50.15
> send
> quit 
[vagrant@client ~]$ 
[vagrant@client ~]$ dig www.ddns.lab
; <<>> DiG 9.11.4-P2-RedHat-9.11.4-26.P2.el7_9.7 <<>> www.ddns.lab
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 52422
;; flags: qr aa rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 1, ADDITIONAL: 2
;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;www.ddns.lab.          IN  A
;; ANSWER SECTION:
www.ddns.lab.       60  IN  A   192.168.50.15
;; AUTHORITY SECTION:
ddns.lab.       3600    IN  NS  ns01.dns.lab.
;; ADDITIONAL SECTION:
ns01.dns.lab.       3600    IN  A   192.168.50.10
;; Query time: 1 msec
;; SERVER: 192.168.50.10#53(192.168.50.10)
;; WHEN: Tue Feb 10 22:23:51 UTC 2026
;; MSG SIZE  rcvd: 96
[vagrant@client ~]$ dig @192.168.50.10 www.ddns.lab
; <<>> DiG 9.11.4-P2-RedHat-9.11.4-26.P2.el7_9.7 <<>> @192.168.50.10 www.ddns.lab
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 52312
;; flags: qr aa rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 1, ADDITIONAL: 2
;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;www.ddns.lab.          IN  A
;; ANSWER SECTION:
www.ddns.lab.       60  IN  A   192.168.50.15
;; AUTHORITY SECTION:
ddns.lab.       3600    IN  NS  ns01.dns.lab.
;; ADDITIONAL SECTION:
ns01.dns.lab.       3600    IN  A   192.168.50.10
;; Query time: 2 msec
;; SERVER: 192.168.50.10#53(192.168.50.10)
;; WHEN: Tue Feb 10 22:24:02 UTC 2026
;; MSG SIZE  rcvd: 96
[root@ns01 ~]# restorecon -v -R /etc/named
restorecon reset /etc/named context system_u:object_r:named_zone_t:s0->system_u:object_r:named_conf_t:s0
restorecon reset /etc/named/named.dns.lab.view1 context system_u:object_r:named_zone_t:s0->system_u:object_r:named_conf_t:s0
restorecon reset /etc/named/named.dns.lab context system_u:object_r:named_zone_t:s0->system_u:object_r:named_conf_t:s0
restorecon reset /etc/named/dynamic context unconfined_u:object_r:named_zone_t:s0->unconfined_u:object_r:named_conf_t:s0
restorecon reset /etc/named/dynamic/named.ddns.lab context system_u:object_r:named_zone_t:s0->system_u:object_r:named_conf_t:s0
restorecon reset /etc/named/dynamic/named.ddns.lab.view1 context system_u:object_r:named_zone_t:s0->system_u:object_r:named_conf_t:s0
restorecon reset /etc/named/dynamic/named.ddns.lab.view1.jnl context system_u:object_r:named_zone_t:s0->system_u:object_r:named_conf_t:s0
restorecon reset /etc/named/named.newdns.lab context system_u:object_r:named_zone_t:s0->system_u:object_r:named_conf_t:s0
restorecon reset /etc/named/named.50.168.192.rev context system_u:object_r:named_zone_t:s0->system_u:object_r:named_conf_t:s0

