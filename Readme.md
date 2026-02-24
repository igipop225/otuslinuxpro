#Цель домашнего задания
Освоить базовые принципы работы с Docker, научиться создавать, настраивать и управлять контейнерами
Описание домашнего задания
Установите Docker на хост машину
https://docs.docker.com/engine/install/ubuntu/
Установите Docker Compose - как плагин, или как отдельное приложение
Создайте свой кастомный образ nginx на базе alpine. После запуска nginx должен отдавать кастомную страницу (достаточно изменить дефолтную страницу nginx)
Определите разницу между контейнером и образом
Вывод опишите в домашнем задании.
Ответьте на вопрос: Можно ли в контейнере собрать ядро?

2026-02-15 13:19:49 user: sudo apt install docker.io
###### 
###### WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
###### 
###### Reading package lists...
###### Building dependency tree...
###### Reading state information...
###### The following additional packages will be installed:
######   bridge-utils containerd dns-root-data dnsmasq-base pigz runc ubuntu-fan
###### Suggested packages:
######   ifupdown aufs-tools cgroupfs-mount | cgroup-lite debootstrap docker-buildx
######   docker-compose-v2 docker-doc rinse zfs-fuse | zfsutils
###### The following NEW packages will be installed:
######   bridge-utils containerd dns-root-data dnsmasq-base docker.io pigz runc
######   ubuntu-fan
###### 0 upgraded, 8 newly installed, 0 to remove and 0 not upgraded.
###### Need to get 61.5 MB of archives.
###### After this operation, 252 MB of additional disk space will be used.
###### Do you want to continue? [Y/n] Get:1 http://ports.ubuntu.com/ubuntu-ports noble/universe arm64 pigz arm64 2.8-1 [60.7 kB]
###### Get:2 http://ports.ubuntu.com/ubuntu-ports noble/main arm64 bridge-utils arm64 1.7.1-1ubuntu2 [34.2 kB]
###### Get:3 http://ports.ubuntu.com/ubuntu-ports noble-updates/main arm64 runc arm64 1.3.3-0ubuntu1~24.04.3 [8,089 kB]
###### Get:4 http://ports.ubuntu.com/ubuntu-ports noble-updates/main arm64 containerd arm64 1.7.28-0ubuntu1~24.04.2 [27.3 MB]
###### Get:5 http://ports.ubuntu.com/ubuntu-ports noble-updates/main arm64 dns-root-data all 2024071801~ubuntu0.24.04.1 [5,918 B]
###### Get:6 http://ports.ubuntu.com/ubuntu-ports noble-updates/main arm64 dnsmasq-base arm64 2.90-2ubuntu0.1 [366 kB]
###### Get:7 http://ports.ubuntu.com/ubuntu-ports noble-updates/universe arm64 docker.io arm64 28.2.2-0ubuntu1~24.04.1 [25.5 MB]
###### Get:8 http://ports.ubuntu.com/ubuntu-ports noble-updates/universe arm64 ubuntu-fan all 0.12.16+24.04.1 [34.2 kB]
###### Preconfiguring packages ...
###### Fetched 61.5 MB in 10s (6,233 kB/s)
###### Selecting previously unselected package pigz.
###### (Reading database ... 
###### Preparing to unpack .../0-pigz_2.8-1_arm64.deb ...
###### Unpacking pigz (2.8-1) ...
###### Selecting previously unselected package bridge-utils.
###### Preparing to unpack .../1-bridge-utils_1.7.1-1ubuntu2_arm64.deb ...
###### Unpacking bridge-utils (1.7.1-1ubuntu2) ...
###### Selecting previously unselected package runc.
###### Preparing to unpack .../2-runc_1.3.3-0ubuntu1~24.04.3_arm64.deb ...
###### Unpacking runc (1.3.3-0ubuntu1~24.04.3) ...
###### Selecting previously unselected package containerd.
###### Preparing to unpack .../3-containerd_1.7.28-0ubuntu1~24.04.2_arm64.deb ...
###### Unpacking containerd (1.7.28-0ubuntu1~24.04.2) ...
###### Selecting previously unselected package dns-root-data.
###### Preparing to unpack .../4-dns-root-data_2024071801~ubuntu0.24.04.1_all.deb ...
###### Unpacking dns-root-data (2024071801~ubuntu0.24.04.1) ...
###### Selecting previously unselected package dnsmasq-base.
###### Preparing to unpack .../5-dnsmasq-base_2.90-2ubuntu0.1_arm64.deb ...
###### Unpacking dnsmasq-base (2.90-2ubuntu0.1) ...
###### Selecting previously unselected package docker.io.
###### Preparing to unpack .../6-docker.io_28.2.2-0ubuntu1~24.04.1_arm64.deb ...
###### Unpacking docker.io (28.2.2-0ubuntu1~24.04.1) ...
###### Selecting previously unselected package ubuntu-fan.
###### Preparing to unpack .../7-ubuntu-fan_0.12.16+24.04.1_all.deb ...
###### Unpacking ubuntu-fan (0.12.16+24.04.1) ...
###### Setting up dnsmasq-base (2.90-2ubuntu0.1) ...
###### Setting up runc (1.3.3-0ubuntu1~24.04.3) ...
###### Setting up dns-root-data (2024071801~ubuntu0.24.04.1) ...
###### Setting up bridge-utils (1.7.1-1ubuntu2) ...
###### Setting up pigz (2.8-1) ...
###### Setting up containerd (1.7.28-0ubuntu1~24.04.2) ...
###### Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /usr/lib/systemd/system/containerd.service.

###### Setting up ubuntu-fan (0.12.16+24.04.1) ...
###### Created symlink /etc/systemd/system/multi-user.target.wants/ubuntu-fan.service → /usr/lib/systemd/system/ubuntu-fan.service.

###### Setting up docker.io (28.2.2-0ubuntu1~24.04.1) ...
###### info: Selecting GID from range 100 to 999 ...
###### info: Adding group `docker' (GID 109) ...
###### Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /usr/lib/systemd/system/docker.service.

###### Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /usr/lib/systemd/system/docker.socket.

###### Processing triggers for dbus (1.14.10-4ubuntu4.1) ...
###### Processing triggers for man-db (2.12.0-4build2) ...
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
2026-02-15 13:21:29 user: docker -v
###### Docker version 28.2.2, build 28.2.2-0ubuntu1~24.04.1
2026-02-15 13:22:54 user: sudo apt install docker-compose-plugin
###### 
###### WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
###### 
###### Reading package lists...
###### Building dependency tree...
###### Reading state information...
###### E: Unable to locate package docker-compose-plugin
2026-02-15 13:23:12 user: sudo apt install docker-compose-plugin
###### 
###### WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
###### 
###### Reading package lists...
###### Building dependency tree...
###### Reading state information...
###### E: Unable to locate package docker-compose-plugin
2026-02-15 13:23:34 user: sudo apt install docker-compose-plugin
###### 
###### WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
###### 
###### Reading package lists...
###### Building dependency tree...
###### Reading state information...
###### E: Unable to locate package docker-compose-plugin
2026-02-15 13:24:13 user: sudo apt install docker-compose-v2
###### 
###### WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
###### 
###### Reading package lists...
###### Building dependency tree...
###### Reading state information...
###### The following NEW packages will be installed:
######   docker-compose-v2
###### 0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
###### Need to get 12.9 MB of archives.
###### After this operation, 63.0 MB of additional disk space will be used.
###### Get:1 http://ports.ubuntu.com/ubuntu-ports noble-updates/universe arm64 docker-compose-v2 arm64 2.37.1+ds1-0ubuntu2~24.04.1 [12.9 MB]
###### Fetched 12.9 MB in 4s (3,457 kB/s)
###### Selecting previously unselected package docker-compose-v2.
###### (Reading database ... 
(Reading database ... 5%
(Reading database ... 10%
(Reading database ... 15%
(Reading database ... 20%
(Reading database ... 25%
(Reading database ... 30%
(Reading database ... 35%
(Reading database ... 40%
(Reading database ... 45%
(Reading database ... 50%
(Reading database ... 55%
(Reading database ... 60%
(Reading database ... 65%
(Reading database ... 70%
(Reading database ... 75%
(Reading database ... 80%
(Reading database ... 85%
(Reading database ... 90%
(Reading database ... 95%
(Reading database ... 100%
(Reading database ... 91777 files and directories currently installed.)
###### Preparing to unpack .../docker-compose-v2_2.37.1+ds1-0ubuntu2~24.04.1_arm64.deb ...
###### Unpacking docker-compose-v2 (2.37.1+ds1-0ubuntu2~24.04.1) ...
###### Setting up docker-compose-v2 (2.37.1+ds1-0ubuntu2~24.04.1) ...
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
2026-02-15 13:24:55 user: docker compose version
###### Docker Compose version 2.37.1+ds1-0ubuntu2~24.04.1
2026-02-15 13:26:04 user: mkdir my-custom-nginx
2026-02-15 13:26:12 user: cd my-custom-nginx
2026-02-15 21:57:34 user: touch index.html
2026-02-15 22:00:21 user: cat
###### <!DOCTYPE html>
###### <html lang="ru">
###### <head>
######     <meta charset="UTF-8">
######     <title>Кастомный nginx на Alpine</title>
###### </head>
###### <body>
######     <h1>Домашнее задание по Docker</h1>
######     <p>Этот nginx работает в контейнере на базе Alpine Linux!</p>
###### </body>
2026-02-15 22:01:34 user: touch Dockerfile
2026-02-15 22:03:42 user: cat Dockerfile
###### FROM nginx:alpine
###### COPY index.html /usr/share/nginx/html/index.html
###### EXPOSE 80
2026-02-15 22:04:17 user: docker build -t my-nginx:latest .
###### #0 building with "default" instance using docker driver
###### 
###### #1 [internal] load build definition from Dockerfile
###### #1 transferring dockerfile: 114B done
###### #1 DONE 0.0s
###### 
###### #2 [internal] load metadata for docker.io/library/nginx:alpine
###### #2 DONE 1.1s
###### 
###### #3 [internal] load .dockerignore
###### #3 transferring context: 2B done
###### #3 DONE 0.0s
###### 
###### #4 [internal] load build context
###### #4 transferring context: 337B done
###### #4 DONE 0.0s
###### 
###### #5 [1/2] FROM docker.io/library/nginx:alpine@sha256:1d13701a5f9f3fb01aaa88cef2344d65b6b5bf6b7d9fa4cf0dca557a8d7702ba
###### #5 resolve docker.io/library/nginx:alpine@sha256:1d13701a5f9f3fb01aaa88cef2344d65b6b5bf6b7d9fa4cf0dca557a8d7702ba done
###### #5 sha256:1d13701a5f9f3fb01aaa88cef2344d65b6b5bf6b7d9fa4cf0dca557a8d7702ba 10.33kB / 10.33kB done
###### #5 sha256:19ba1056e79bc87239a231d16048877ed3c97e58d40c2a4b3c3e1694ff67ceb7 2.50kB / 2.50kB done
###### #5 sha256:128568fed7ff6f758ccfd95b4d4491a53d765e5553c46f44889c6c5f136c8c5b 11.67kB / 11.67kB done
###### #5 sha256:31d394b0c9eda37c098db2471823834f196fc546d924d31f47e554b378133051 0B / 622B 0.1s
###### #5 sha256:d8ad8cd72600f46cc068e16c39046ebc76526e41051f43a8c249884b200936c0 0B / 4.20MB 0.1s
###### #5 sha256:c5ad07fbd6e6555e50b0a471f744c9373664dff6236d23b1c2d4c37903012296 0B / 1.87MB 0.1s
###### #5 sha256:c5ad07fbd6e6555e50b0a471f744c9373664dff6236d23b1c2d4c37903012296 1.05MB / 1.87MB 1.2s
###### #5 sha256:c5ad07fbd6e6555e50b0a471f744c9373664dff6236d23b1c2d4c37903012296 1.87MB / 1.87MB 1.3s done
###### #5 sha256:9084d2ffc28327306889767de8533d0d890e8e540797ce9933a917927dde87fd 0B / 953B 1.4s
###### #5 sha256:31d394b0c9eda37c098db2471823834f196fc546d924d31f47e554b378133051 622B / 622B 1.6s done
###### #5 sha256:821790ca706fdc0c24606a10201118cec0f6b3051da3b31366cf0e62ec23ab67 0B / 402B 1.6s
###### #5 sha256:9084d2ffc28327306889767de8533d0d890e8e540797ce9933a917927dde87fd 953B / 953B 2.0s done
###### #5 sha256:7833e4e4252caed7bfc2fa1e0dfb929d975482f39ccc04e1444ab7f121cc882d 0B / 1.21kB 2.1s
###### #5 sha256:821790ca706fdc0c24606a10201118cec0f6b3051da3b31366cf0e62ec23ab67 402B / 402B 2.1s done
###### #5 sha256:88799a707571093c0492a622acc0dbaae6337f23bd486eadf27ca684def26a7a 0B / 1.40kB 2.2s
###### #5 sha256:d8ad8cd72600f46cc068e16c39046ebc76526e41051f43a8c249884b200936c0 1.05MB / 4.20MB 2.4s
###### #5 sha256:d8ad8cd72600f46cc068e16c39046ebc76526e41051f43a8c249884b200936c0 2.10MB / 4.20MB 2.6s
###### #5 sha256:7833e4e4252caed7bfc2fa1e0dfb929d975482f39ccc04e1444ab7f121cc882d 1.21kB / 1.21kB 2.5s done
###### #5 sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 0B / 19.71MB 2.6s
###### #5 sha256:d8ad8cd72600f46cc068e16c39046ebc76526e41051f43a8c249884b200936c0 3.15MB / 4.20MB 2.7s
###### #5 extracting sha256:d8ad8cd72600f46cc068e16c39046ebc76526e41051f43a8c249884b200936c0
###### #5 sha256:d8ad8cd72600f46cc068e16c39046ebc76526e41051f43a8c249884b200936c0 4.20MB / 4.20MB 2.8s done
###### #5 sha256:88799a707571093c0492a622acc0dbaae6337f23bd486eadf27ca684def26a7a 1.40kB / 1.40kB 2.8s done
###### #5 extracting sha256:d8ad8cd72600f46cc068e16c39046ebc76526e41051f43a8c249884b200936c0 0.1s done
###### #5 extracting sha256:c5ad07fbd6e6555e50b0a471f744c9373664dff6236d23b1c2d4c37903012296 0.0s done
###### #5 extracting sha256:31d394b0c9eda37c098db2471823834f196fc546d924d31f47e554b378133051 done
###### #5 extracting sha256:9084d2ffc28327306889767de8533d0d890e8e540797ce9933a917927dde87fd done
###### #5 extracting sha256:821790ca706fdc0c24606a10201118cec0f6b3051da3b31366cf0e62ec23ab67
###### #5 extracting sha256:821790ca706fdc0c24606a10201118cec0f6b3051da3b31366cf0e62ec23ab67 done
###### #5 extracting sha256:7833e4e4252caed7bfc2fa1e0dfb929d975482f39ccc04e1444ab7f121cc882d done
###### #5 extracting sha256:88799a707571093c0492a622acc0dbaae6337f23bd486eadf27ca684def26a7a done
###### #5 sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 1.05MB / 19.71MB 4.0s
###### #5 sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 3.15MB / 19.71MB 4.2s
###### #5 sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 6.29MB / 19.71MB 4.4s
###### #5 sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 9.44MB / 19.71MB 4.7s
###### #5 sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 10.49MB / 19.71MB 4.9s
###### #5 sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 13.63MB / 19.71MB 5.1s
###### #5 sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 14.68MB / 19.71MB 5.2s
###### #5 sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 18.87MB / 19.71MB 5.4s
###### #5 extracting sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd
###### #5 sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 19.71MB / 19.71MB 5.5s done
###### #5 extracting sha256:da8475fa07c770fbfdc5a1bbb5cbd8c44fea3c125feb65eb76a1c199c85184bd 0.3s done
###### #5 DONE 5.9s
###### 
###### #6 [2/2] COPY index.html /usr/share/nginx/html/index.html
###### #6 DONE 0.0s
###### 
###### #7 exporting to image
###### #7 exporting layers done
###### #7 writing image sha256:321c4a71bbfb73b647cb50f990abd4774908a2c5012d0ebc6dea950048f9a0ef done
###### #7 naming to docker.io/library/my-nginx:latest done
###### #7 DONE 0.0s
2026-02-15 22:08:00 user: docker images
###### WARNING: This output is designed for human readability. For machine-readable output, please use --format.
###### IMAGE             ID             DISK USAGE   CONTENT SIZE   EXTRA
###### my-nginx:latest   321c4a71bbfb       61.5MB             0B        
2026-02-15 22:08:35 user: docker run -d -p 8080:80 --name my-nginx my-nginx:latest
###### a304bc40e865469bc3f20e51c2f94588cfd2a94b32e0e43e522c975530602f50
2026-02-15 22:09:05 user: curl localhost:8080
######   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
######                                  Dload  Upload   Total   Spent    Left  Speed
###### 
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100   298  100   298    0     0  53635      0 --:--:-- --:--:-- --:--:-- 59600
###### <!DOCTYPE html>
###### <html lang="ru">
###### <head>
######     <meta charset="UTF-8">
######     <title>Кастомный nginx на Alpine</title>
###### </head>
###### <body>
######     <h1>Домашнее задание по Docker</h1>
######     <p>Этот nginx работает в контейнере на базе Alpine Linux!</p>
###### </body>
2026-02-15 22:09:19 user: docker logs my-nginx
###### /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
###### /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
###### /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
###### 10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
###### 10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
###### /docker-entrypoint.sh: Sourcing /docker-entrypoint.d/15-local-resolvers.envsh
###### /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
###### /docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
###### /docker-entrypoint.sh: Configuration complete; ready for start up
###### 2026/02/15 22:08:35 [notice] 1#1: using the "epoll" event method
###### 2026/02/15 22:08:35 [notice] 1#1: nginx/1.29.5
###### 2026/02/15 22:08:35 [notice] 1#1: built by gcc 15.2.0 (Alpine 15.2.0) 
###### 2026/02/15 22:08:35 [notice] 1#1: OS: Linux 6.8.0-100-generic
###### 2026/02/15 22:08:35 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1024:524288
###### 2026/02/15 22:08:35 [notice] 1#1: start worker processes
###### 2026/02/15 22:08:35 [notice] 1#1: start worker process 30
###### 2026/02/15 22:08:35 [notice] 1#1: start worker process 31
###### 172.17.0.1 - - [15/Feb/2026:22:09:05 +0000] "GET / HTTP/1.1" 200 298 "-" "curl/8.5.0" "-"
2026-02-15 22:09:29 user: docker inspect my-nginx
###### [
######     {
######         "Id": "a304bc40e865469bc3f20e51c2f94588cfd2a94b32e0e43e522c975530602f50",
######         "Created": "2026-02-15T22:08:35.648298504Z",
######         "Path": "/docker-entrypoint.sh",
######         "Args": [
######             "nginx",
######             "-g",
######             "daemon off;"
######         ],
######         "State": {
######             "Status": "running",
######             "Running": true,
######             "Paused": false,
######             "Restarting": false,
######             "OOMKilled": false,
######             "Dead": false,
######             "Pid": 7442,
######             "ExitCode": 0,
######             "Error": "",
######             "StartedAt": "2026-02-15T22:08:35.693058418Z",
######             "FinishedAt": "0001-01-01T00:00:00Z"
######         },
######         "Image": "sha256:321c4a71bbfb73b647cb50f990abd4774908a2c5012d0ebc6dea950048f9a0ef",
######         "ResolvConfPath": "/var/lib/docker/containers/a304bc40e865469bc3f20e51c2f94588cfd2a94b32e0e43e522c975530602f50/resolv.conf",
######         "HostnamePath": "/var/lib/docker/containers/a304bc40e865469bc3f20e51c2f94588cfd2a94b32e0e43e522c975530602f50/hostname",
######         "HostsPath": "/var/lib/docker/containers/a304bc40e865469bc3f20e51c2f94588cfd2a94b32e0e43e522c975530602f50/hosts",
######         "LogPath": "/var/lib/docker/containers/a304bc40e865469bc3f20e51c2f94588cfd2a94b32e0e43e522c975530602f50/a304bc40e865469bc3f20e51c2f94588cfd2a94b32e0e43e522c975530602f50-json.log",
######         "Name": "/my-nginx",
######         "RestartCount": 0,
######         "Driver": "overlay2",
######         "Platform": "linux",
######         "MountLabel": "",
######         "ProcessLabel": "",
######         "AppArmorProfile": "docker-default",
######         "ExecIDs": null,
######         "HostConfig": {
######             "Binds": null,
######             "ContainerIDFile": "",
######             "LogConfig": {
######                 "Type": "json-file",
######                 "Config": {}
######             },
######             "NetworkMode": "bridge",
######             "PortBindings": {
######                 "80/tcp": [
######                     {
######                         "HostIp": "",
######                         "HostPort": "8080"
######                     }
######                 ]
######             },
######             "RestartPolicy": {
######                 "Name": "no",
######                 "MaximumRetryCount": 0
######             },
######             "AutoRemove": false,
######             "VolumeDriver": "",
######             "VolumesFrom": null,
######             "ConsoleSize": [
######                 0,
######                 0
######             ],
######             "CapAdd": null,
######             "CapDrop": null,
######             "CgroupnsMode": "private",
######             "Dns": null,
######             "DnsOptions": [],
######             "DnsSearch": [],
######             "ExtraHosts": null,
######             "GroupAdd": null,
######             "IpcMode": "private",
######             "Cgroup": "",
######             "Links": null,
######             "OomScoreAdj": 0,
######             "PidMode": "",
######             "Privileged": false,
######             "PublishAllPorts": false,
######             "ReadonlyRootfs": false,
######             "SecurityOpt": null,
######             "UTSMode": "",
######             "UsernsMode": "",
######             "ShmSize": 67108864,
######             "Runtime": "runc",
######             "Isolation": "",
######             "CpuShares": 0,
######             "Memory": 0,
######             "NanoCpus": 0,
######             "CgroupParent": "",
######             "BlkioWeight": 0,
######             "BlkioWeightDevice": [],
######             "BlkioDeviceReadBps": [],
######             "BlkioDeviceWriteBps": [],
######             "BlkioDeviceReadIOps": [],
######             "BlkioDeviceWriteIOps": [],
######             "CpuPeriod": 0,
######             "CpuQuota": 0,
######             "CpuRealtimePeriod": 0,
######             "CpuRealtimeRuntime": 0,
######             "CpusetCpus": "",
######             "CpusetMems": "",
######             "Devices": [],
######             "DeviceCgroupRules": null,
######             "DeviceRequests": null,
######             "MemoryReservation": 0,
######             "MemorySwap": 0,
######             "MemorySwappiness": null,
######             "OomKillDisable": null,
######             "PidsLimit": null,
######             "Ulimits": [],
######             "CpuCount": 0,
######             "CpuPercent": 0,
######             "IOMaximumIOps": 0,
######             "IOMaximumBandwidth": 0,
######             "MaskedPaths": [
######                 "/proc/acpi",
######                 "/proc/asound",
######                 "/proc/interrupts",
######                 "/proc/kcore",
######                 "/proc/keys",
######                 "/proc/latency_stats",
######                 "/proc/sched_debug",
######                 "/proc/scsi",
######                 "/proc/timer_list",
######                 "/proc/timer_stats",
######                 "/sys/devices/virtual/powercap",
######                 "/sys/firmware"
######             ],
######             "ReadonlyPaths": [
######                 "/proc/bus",
######                 "/proc/fs",
######                 "/proc/irq",
######                 "/proc/sys",
######                 "/proc/sysrq-trigger"
######             ]
######         },
######         "GraphDriver": {
######             "Data": {
######                 "ID": "a304bc40e865469bc3f20e51c2f94588cfd2a94b32e0e43e522c975530602f50",
######                 "LowerDir": "/var/lib/docker/overlay2/aa59be7e4f77ba109205720dc2add6bb1e8e29fd010332e317190cd359d303a4-init/diff:/var/lib/docker/overlay2/xwv4qt0jbrgxnbypwzum47d3t/diff:/var/lib/docker/overlay2/5cdf335aebf4a9301cd0145886d15c15a706614526fcf357b0982dae4943e3b5/diff:/var/lib/docker/overlay2/2379499583e8273410f92dfbc7f4277209ff43dc8501f85aca95633f189d6a54/diff:/var/lib/docker/overlay2/4ece703c96e0bced5a1031fff0bf94da14c3bce4b0e49fdcb057b57b4e694188/diff:/var/lib/docker/overlay2/a6a90aa6107af7ce67238a8d64571542df5b2c37028477882bd04cdf94d38d03/diff:/var/lib/docker/overlay2/26485f2d6cd60fdc0b1116e3943eef3b3e2e945c88c81c0c3212d0feefe26a83/diff:/var/lib/docker/overlay2/0586ddd83987d537e9fcb4e67f6a0a49428175ecc8f11a76811df122df3f2289/diff:/var/lib/docker/overlay2/c0159992965aea1260af6e5f6891fd8b4fed2a6eca99afaa472aee34d61eb2e6/diff:/var/lib/docker/overlay2/3acfb98a2ec17fa5ace536e7d3f1a681ee3b572b682f0159e679f3fd5f3a76e1/diff",
######                 "MergedDir": "/var/lib/docker/overlay2/aa59be7e4f77ba109205720dc2add6bb1e8e29fd010332e317190cd359d303a4/merged",
######                 "UpperDir": "/var/lib/docker/overlay2/aa59be7e4f77ba109205720dc2add6bb1e8e29fd010332e317190cd359d303a4/diff",
######                 "WorkDir": "/var/lib/docker/overlay2/aa59be7e4f77ba109205720dc2add6bb1e8e29fd010332e317190cd359d303a4/work"
######             },
######             "Name": "overlay2"
######         },
######         "Mounts": [],
######         "Config": {
######             "Hostname": "a304bc40e865",
######             "Domainname": "",
######             "User": "",
######             "AttachStdin": false,
######             "AttachStdout": false,
######             "AttachStderr": false,
######             "ExposedPorts": {
######                 "80/tcp": {}
######             },
######             "Tty": false,
######             "OpenStdin": false,
######             "StdinOnce": false,
######             "Env": [
######                 "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
######                 "NGINX_VERSION=1.29.5",
######                 "PKG_RELEASE=1",
######                 "DYNPKG_RELEASE=1",
######                 "NJS_VERSION=0.9.5",
######                 "NJS_RELEASE=1",
######                 "ACME_VERSION=0.3.1"
######             ],
######             "Cmd": [
######                 "nginx",
######                 "-g",
######                 "daemon off;"
######             ],
######             "Image": "my-nginx:latest",
######             "Volumes": null,
######             "WorkingDir": "/",
######             "Entrypoint": [
######                 "/docker-entrypoint.sh"
######             ],
######             "Labels": {
######                 "maintainer": "NGINX Docker Maintainers <docker-maint@nginx.com>"
######             },
######             "StopSignal": "SIGQUIT"
######         },
######         "NetworkSettings": {
######             "SandboxID": "cc58aed159e5628a596c9035fc616f67405acfe785009ae29f7577bdf318c51d",
######             "SandboxKey": "/var/run/docker/netns/cc58aed159e5",
######             "Ports": {
######                 "80/tcp": [
######                     {
######                         "HostIp": "0.0.0.0",
######                         "HostPort": "8080"
######                     },
######                     {
######                         "HostIp": "::",
######                         "HostPort": "8080"
######                     }
######                 ]
######             },
######             "Networks": {
######                 "bridge": {
######                     "IPAMConfig": null,
######                     "Links": null,
######                     "Aliases": null,
######                     "DriverOpts": null,
######                     "GwPriority": 0,
######                     "NetworkID": "286824bbd62c022957e30a7286eb33cd7bd97b83daf44988e3522c892bbb5ee8",
######                     "EndpointID": "fb7c9849ff5987bba67ccad712792b4d2312faeb1049d978351cf78e29682f0c",
######                     "Gateway": "172.17.0.1",
######                     "IPAddress": "172.17.0.2",
######                     "MacAddress": "02:9a:1e:f8:e9:69",
######                     "IPPrefixLen": 16,
######                     "IPv6Gateway": "",
######                     "GlobalIPv6Address": "",
######                     "GlobalIPv6PrefixLen": 0,
######                     "DNSNames": null
######                 }
######             }
######         }
######     }
###### ]
2026-02-15 22:09:41 user: docker stop my-nginx
###### my-nginx
2026-02-15 22:09:54 user: docker rm my-nginx
###### my-nginx


#﻿4. Определите разницу между контейнером и образом

Образ – неизменяемый шаблон, содержащий файловую систему, настройки и зависимости для запуска приложения. Он хранится в реестре и используется для создания контейнеров 
Контейнер – запущенный экземпляр образа. 
То есть образ - класс, который определяет структуру и поведение, а контейнер – объект, созданный на основе класса.


#6. Ответьте на вопрос: можно ли в контейнере собрать ядро?

Можно собрать ядро, но запустить его там же нельзя, так как невозможно заменить ядро хоста.
