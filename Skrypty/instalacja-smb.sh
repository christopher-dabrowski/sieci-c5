#!/bin/sh

#Konfiguracja sieciowa
ip address add 10.146.225.156 dev eno1

#Utworzenie zasobow
mkdir publicznyKatalog
echo "Ciekawy tekst" >publicznyKatalog/plik.txt

#Instalacja SMB
sudo apt update
sudo apt install samba

#Konfiguracja
PASS=p@Sw0rD
sudo echo "[sambashare]\n comment = Samba on Ubuntu\n path = ~/publicznyKatalog\n read only = no\n browsable = yes" >>/etc/samba/smb.conf
echo -ne "$PASS\n$PASS\n" | smbpasswd -a -s dabrowk1

#Uruchomienie serwera
sudo service smbd restart