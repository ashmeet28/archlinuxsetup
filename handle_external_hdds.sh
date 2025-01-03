#!/usr/bin/env bash

if [ -d "/mnt/b/storage" ]; then
  umount /mnt/b
  sleep 1
  udisksctl power-off -b /dev/sda
fi

