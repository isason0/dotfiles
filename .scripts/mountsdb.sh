#!/bin/bash
# Simple script to mount and unmount /dev/sdb1 (usually an external storage drive)
# Depend: udisks, GNU coreutils, bash
#

## Variables
 ## sdbstatus detects if we have a block device named sdb.
sdbstatus=`lsblk | grep sdb | head -n1 | grep -o "^\S*"`
#
## echo $sdbstatus
## If -statement
## If sdb is found, mount sdb1; otherwise print out an error.
if [[ $sdbstatus = sdb ]]; then
    if mount | grep -qs sdb1; then
        udisksctl unmount -b /dev/sdb1
    else
        udisksctl mount -b /dev/sdb1
    fi
else
    echo "Can't mount sdb1: "
    echo 'Error: No blkdevice named "sdb".'
fi
