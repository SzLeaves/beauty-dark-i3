#!/usr/bin/env bash

# reboot/poweroff/exit/
OPTIONS="E\nR\nS"

LAUNCHER="rofi -dmenu -config ~/.config/i3/rofi/power_menu.rasi"
USE_LOCKER="false"
LOCKER="i3lock"

option=`echo -e $OPTIONS | $LAUNCHER | awk '{print $1}' | tr -d '\r\n'`
if [ ${#option} -gt 0 ]
then
    case $option in
        E)
            i3-msg exit
            ;;
        R)
            systemctl reboot
            ;;
        S)
            systemctl poweroff
            ;;
        *)
            ;;
    esac
fi
