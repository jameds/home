#!/bin/sh
type i3-msg jq urxvtc >/dev/null
i3-msg -t get_workspaces |
	jq -r '.[]|select(.focused)|.name'
exec urxvtc "$@"
