#!/bin/sh
cd "$(dirname "$0")"
for layout in layouts/*.txt; do
	w="$(basename "$layout" .txt)"
	name="$(awk -v "w=$w" -F '[ "]+' \
		'$1=="set"&&$2=="$w"w{print$3}' workspaces.conf)"
	[ "$name" ] && swaymsg -q "$(cat <<-EOT
	workspace $name
	$(cat "$layout")
	EOT
	)"
done
