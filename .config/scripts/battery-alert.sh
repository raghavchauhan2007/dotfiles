#!/bin/bash

while true; do
    bat=$(cat /sys/class/power_supply/BAT*/capacity | head -1)
    stat=$(cat /sys/class/power_supply/BAT*/status | head -1)

    if [ "$stat" = "Discharging" ] && [ "$bat" -le 30 ]; then
        notify-send "Battery Low" "Level is at $bat%"
        sleep 300
    elif [ "$stat" = "Charging" ] && [ "$bat" -ge 80 ]; then
        notify-send "Battery Good" "Level is at $bat%"
        sleep 300
    else
        sleep 60
    fi
done
