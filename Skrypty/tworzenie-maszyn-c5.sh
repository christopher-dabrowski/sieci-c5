#!/bin/sh
OS_TYPE=FreeBSD_64
ISO=/pub/FreeBSD/zetis/freebsd-mfs-12.0-STABLE-amd64.iso
INTERFACE=eno2

install-vm.sh Vm1 $OS_TYPE $ISO $INTERFACE
install-vm.sh Vm2 $OS_TYPE $ISO $INTERFACE