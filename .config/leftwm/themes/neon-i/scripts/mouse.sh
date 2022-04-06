#!/bin/sh
path=$(find /sys/class/power_supply -name "hidpp*")
if [ -z "$path" ]
then
      :
else
      capacity=$(cat $path/capacity)
      echo "$capacity%"
fi