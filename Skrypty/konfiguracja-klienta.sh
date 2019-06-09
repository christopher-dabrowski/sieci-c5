#!/bin/sh
sudo apt update
sudo apt install cifs-utils

echo "//SERVER/share /mnt/samba cifs username=dabrowk1,password=p@Sw0rD 0 0" >>/etc/fstab