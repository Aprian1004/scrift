#!/bin/bash
apt-get update
wget "http://prdownloads.sourceforge.net/webadmin/webmin_1.810_all.deb"
dpkg --install webmin_1.810_all.deb;
apt-get -y -f install;
rm /root/webmin_1.810_all.deb
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf
service webmin restart