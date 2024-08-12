#!/usr/bin/env bash

# File where battery information is stored
BATTERY_STATUS_FILE="/sys/class/power_supply/BAT0/capacity"

# Check if the battery status file exists
if [ ! -f "$BATTERY_STATUS_FILE" ]; then
    echo "Battery status file not found!"
    exit 1
fi

# Read the battery level from the file
BATTERY_LEVEL=$(cat "$BATTERY_STATUS_FILE")

# Check if the battery level is less than 20%
if [ "$BATTERY_LEVEL" -lt 20 ]; then
    echo "Battery level is critical. Shutting down."
    # Initiate shutdown
    systemctl poweroff
fi
