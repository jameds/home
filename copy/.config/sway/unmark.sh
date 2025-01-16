#!/bin/sh
type swaymsg jq >/dev/null
swaymsg -t get_tree | jq -r \
	'recurse(.nodes[]) |
	del(.nodes) |
	select(.focused)|.marks[]' |
		awk '{print"unmark "$1";"}' |
		swaymsg "$(cat)"
