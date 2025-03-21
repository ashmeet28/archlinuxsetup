#!/usr/bin/env bash

# File where battery information is stored
BATTERY_STATUS_FILE="/sys/class/power_supply/BAT0/capacity"

# Check if the battery status file exists
if [ ! -f "$BATTERY_STATUS_FILE" ]; then
    echo "Battery status file not found!"
    exit 1
fi


if [ $(cat "$BATTERY_STATUS_FILE") -le 20 ]; then
    echo "Battery level is critical. Shutting down."
    systemctl poweroff
fi
