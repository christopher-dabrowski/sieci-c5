#!/bin/sh

#Konfiguracja sieciowa
ip address add 10.146.225.157 dev eno1

sudo apt update
sudo apt install cifs-utils

#Utworzenie punktu montowania
mkdir punktMontowania

#Ustawienie montowania dysku
echo "//10.146.225.156/sambashare ~/punktMontowania cifs username=dabrowk1,password=p@Sw0rD 0 0" >>/etc/fstab
mount -a