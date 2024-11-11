#!/usr/bin/env bash

if [ -d "/mnt/c/storage" ]; then
  umount /mnt/c
  sleep 1
  umount /mnt/b
  sleep 5
  udisksctl power-off -b /dev/sda
  sleep 10
fi

