#!/bin/sh

# Linux
KERNEL="./boot_centos7/vmlinuz-3.10.0-514.el7.x86_64"
INITRD="./boot_centos7/initramfs-3.10.0-514.el7.x86_64.img"
CMDLINE="earlyprintk=serial quiet console=ttyS0 acpi=off root=/dev/vda3 ro"

MEM="-m 256M"
SMP="-c 1"
NET="-s 2:0,virtio-net"
IMG_HDD="-s 4,virtio-blk,./ansible_centos7.img"
PCI_DEV="-s 0:0,hostbridge -s 31,lpc"
LPC_DEV="-l com1,stdio"
UUID="-U deadbeef-dead-dead-dead-deaddeaf0001"
sudo xhyve $ACPI $MEM $SMP $PCI_DEV $LPC_DEV $NET $IMG_CD $IMG_HDD $UUID -f kexec,$KERNEL,$INITRD,"$CMDLINE" &
