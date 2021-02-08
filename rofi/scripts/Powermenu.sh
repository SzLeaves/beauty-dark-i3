#!/usr/bin/env bash

# reboot/poweroff/exit/
OPTIONS="R\nS\nE"

LAUNCHER="rofi -width 30 -dmenu -i -p power -config ~/.config/i3/rofi/themes/Powermenu.rasi "
USE_LOCKER="false"
LOCKER="i3lock"

option=`echo -e $OPTIONS | $LAUNCHER | awk '{print $1}' | tr -d '\r\n'`
if [ ${#option} -gt 0 ]
then
    case $option in
        R)
            systemctl reboot
            ;;
        S)
            systemctl poweroff
            ;;

        E)
            i3-msg exit
            ;;
        *)
            ;;
    esac
fi
