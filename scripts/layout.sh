#!/usr/bin/env bash
#todo

layout=$(leftwm-state -q -w 0 -s "{{ workspace.layout }}" )

case "$layout" in
	"MainAndVertStack" )
		echo 'lol';;
	*)
		echo $layout;;
	# "pattern2" )
		# Command … ;;
esac
