#!/usr/bin/env bash

if [ -d "/mnt/b/storage" ]; then
  umount /mnt/b
  sleep 5
  udisksctl power-off -b /dev/sda
  sleep 10
fi

