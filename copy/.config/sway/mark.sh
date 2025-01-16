#!/bin/sh
type swaymsg jq >/dev/null
if [ $# -lt 1 ]; then
	>&2 echo "Usage: $0 <command> [dmenu options]"
	exit 1
fi
cmd="$1"
shift
printf "$cmd" "$(\
	swaymsg -t get_marks |
	jq -r '.[]' |
	dmenu "$@")" |
	swaymsg "$(cat)"
