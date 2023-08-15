#!/usr/bin/env bash

pid=$(pidof polybar)
var1=${pid% *}
var2=${pid#* }

echo $var1
echo $var2

target=$((var1 < var2 ? var1 : var2))

echo $target

polybar-msg -p $target cmd toggle
