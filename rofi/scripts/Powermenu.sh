#!/usr/bin/env bash

# exit/reboot/shutdown/
OPTIONS="E\nR\nS"

LAUNCHER="rofi -width 30 -dmenu -i -p power -config ~/.config/i3/rofi/themes/Powermenu.rasi "
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
