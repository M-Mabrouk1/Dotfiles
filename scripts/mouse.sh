#!/bin/sh
PATH=$(find /sys/class/power_supply -name "hidpp*")
if [ -z "$PATH" ]
then
      :
else
      capacity=$(/usr/bin/cat $PATH/capacity)
      echo "$capacity%"
fi