#!/bin/bash
#boedaxbayah | 087778588808
echo "-----------------------------------------------------"
echo "          ISIKAN FORM DIBAWAH                "
echo "-----------------------------------------------------"
echo -n "Nama akun: "
read akun
echo -n "Passwod: "
read pass
echo -n "Aktif Selama: "
read exp
IP=`ifconfig venet0:0| awk 'NR==2 {print $2}'| awk -F: '{print $2}'`
useradd -e `date -d "$exp days" +"%Y-%m-%d"` -s /bin/false -M $akun
echo -e "$pass\n$pass\n"|passwd $akun &> /dev/null
echo "-----------------------------------------------------"
echo "          AKUN BARU TELAH DIBUAT              "
echo "-----------------------------------------------------"
echo -e "Username: $akun "
echo -e "Password: $pass"
echo -e "Aktif Selama: $exp hari"
echo -e "IP: $IP "
echo -e "Port: isikan port kalian "
echo "-----------------------------------------------------"
echo -e "\e[1;33;44m[ boedaxbayah ]\e[0m"