#!/usr/bin/env bash

# File where battery information is stored
BATTERY_STATUS_FILE="/sys/class/power_supply/BAT0/capacity"

# Check if the battery status file exists
if [ ! -f "$BATTERY_STATUS_FILE" ]; then
    echo "Battery status file not found!"
    exit 1
fi

sleep 120

# Sleep if the battery level is greater than or equal to 20%
while [ $(cat "$BATTERY_STATUS_FILE") -ge 20 ];
do
    sleep 30
done

echo "Battery level is critical. Shutting down."

# Initiate shutdown
systemctl poweroff
