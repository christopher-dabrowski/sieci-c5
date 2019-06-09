#!/bin/sh
VM=$1
OST=$2
ISO=$3
PORT=$4
NETWORK=${5:-myNetwork}
MEMORY=2048

alias vbm='VBoxManage'
vbm createvm --name $VM --ostype $OST --register
vbm storagectl $VM --add sata --name SATA
vbm storageattach $VM --storagectl SATA --port 0 --device 0 --type dvddrive --medium $ISO
vbm modifyvm $VM --boot1 dvd --boot2 net --boot3 disk --boot4 none
vbm modifyvm $VM --memory $MEMORY --vram 128 --cpus 2
vbm modifyvm $VM --nic1 bridged --bridgeadapter1 $PORT