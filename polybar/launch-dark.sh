#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c ~/.config/polybar/workspaces -r bar &
polybar -c ~/.config/polybar/config-dark -r bar &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example &
  done
else
	  polybar --reload config-dark &
  polybar --reload modules
	fi

echo "Polybar launched..."
