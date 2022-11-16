#!/bin/sh

BATTERY_INFO=($( acpi | awk -F',' '{ print $0 }'))
ICON=""
LABEL=""

if [ ! -z "$BATTERY_INFO" ]; then
    CHARGE=($( echo ${BATTERY_INFO[3]} | sed 's/%,//g' ))
    if [[ $CHARGE -le 2 ]]; then
        ICON=" "
    elif [[ $CHARGE -le 5 ]]; then
        ICON=" "
    elif [[ $CHARGE -lt 40 ]]; then
        ICON=" "
    elif [[ $CHARGE -lt 60 ]]; then
        ICON=" "
    elif [[ $CHARGE -lt 90 ]]; then
        ICON=" "
    else
        ICON=" "
    fi

    CHARGING=($(echo ${BATTERY_INFO[2]} | sed 's/,//g' ))
    if [[ $CHARGING == "Charging" ]] || [[ $CHARGING == "Unknown" ]]; then
        ICON=" "
    fi

    REMAINING=($(echo ${BATTERY_INFO[4]} | sed 's/,//g' ))
    LABEL="$CHARGE%"
fi

echo "$ICON$LABEL"
