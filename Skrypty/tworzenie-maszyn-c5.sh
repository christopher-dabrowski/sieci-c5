#!/bin/sh
OS_TYPE=Ubuntu_64
ISO=/pub/Linux/Ubuntu/ubuntu-19.04-live-server-amd64.iso
INTERFACE=eno2

install-vm.sh Vm1 $OS_TYPE $ISO $INTERFACE
install-vm.sh Vm2 $OS_TYPE $ISO $INTERFACE