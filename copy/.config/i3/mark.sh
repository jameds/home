#!/bin/sh
type i3-msg jq >/dev/null
if [ $# -lt 1 ]; then
	>&2 echo "Usage: $0 <command> [dmenu options]"
	exit 1
fi
cmd="$1"
shift
printf "$cmd" "$(\
	i3-msg -t get_marks |
	jq -r '.[]' |
	dmenu "$@")" |
	i3-msg "$(cat)"
