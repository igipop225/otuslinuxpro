#!/bin/bash
apt install nfs-kernel-server -y
mkdir -p /srv/share/upload
chown -R nobody:nogroup /srv/share
chmod 0777 /srv/share/upload
cat << EOF > /etc/exports /srv/share 192.168.50.10/32(rw,sync,root_squash) EOF
exportfs -r

