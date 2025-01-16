#!/bin/sh
layout() {
	swaymsg -q "input type:keyboard xkb_layout $1";
}
case "$1" in
	1)
		otd applypreset Default
		layout us
		;;
	'')
		layout dpad
		;;
	*)
	while getopts 'k:t:' o; do
		case "$o" in
			k)
				layout "$OPTARG"
				;;
			t)
				otd applypreset "$OPTARG"
				;;
		esac
	done
esac
