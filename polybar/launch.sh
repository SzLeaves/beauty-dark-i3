#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch example bar
polybar -config $HOME/.config/i3/polybar/config.ini main 2>&1 | tee -a /tmp/polybar-main.log & disown
polybar -config $HOME/.config/i3/polybar/config.ini external 2>&1 | tee -a /tmp/polybar-external.log & disown
