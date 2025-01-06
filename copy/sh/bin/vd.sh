#!/bin/sh
case "$1" in
	1)
		setxkbmap -layout us
		;;
	*)
		xmodmap ~/data/dpad.Xmodmap
		;;
esac
