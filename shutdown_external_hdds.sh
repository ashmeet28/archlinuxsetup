#!/usr/bin/env bash

exit 0

if [[ ! -L "/dev/disk/by-uuid/1" ]]; then
  exit 0
fi

if findmnt "/dev/disk/by-uuid/1"; then
    umount "/dev/disk/by-uuid/1"
fi

udisksctl power-off -b "/dev/disk/by-uuid/1"
