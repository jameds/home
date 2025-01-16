#!/bin/sh
case "$1" in
	1)
		swaymsg -q 'input type:keyboard xkb_layout us'
		;;
	*)
		swaymsg -q 'input type:keyboard xkb_layout dpad'
		;;
esac
