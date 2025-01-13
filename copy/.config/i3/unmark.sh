#!/bin/sh
i3-msg -t get_tree | jq -r \
	'recurse(.nodes[]) |
	del(.nodes) |
	select(.focused)|.marks[]' |
		awk '{print"unmark "$1";"}' |
		i3-msg "$(cat)"
