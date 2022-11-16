#!/bin/sh

BATTERY_INFO=($( acpi | awk -F',' '{ print $0 }'))
ICON=""

if [ -z "$BATTERY_INFO" ] && [ -d "/sys/class/power_supply/AC" ]; then
    ICON=""
fi

echo "$ICON"
