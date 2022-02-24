#!/bin/bash
if pgrep -x "picom" > /dev/null
then
	killall picom; notify-send "Picom Killed"
else
	picom --experimental-backends -b --config ~/.config/picom/picom.conf; notify-send "Picom enabled"
fi
