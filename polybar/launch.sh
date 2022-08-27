#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch example bar
echo "---" | tee -a /tmp/polybar-example.log 
polybar -config $HOME/.config/i3/polybar/main.ini 2>&1 | tee -a /tmp/polybar-main.log & disown
sleep 0.2
polybar -config $HOME/.config/i3/polybar/external.ini 2>&1 | tee -a /tmp/polybar-external.log & disown
