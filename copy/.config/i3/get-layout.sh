#!/bin/sh
cd "$(dirname "$0")"
xrdb -query | awk -f _get-layout.awk -v "Match=$(\
	find layouts -name '*.json' -printf '%P\n' |
	sed 's/\.json$//')" | i3-msg -q "$(cat)"
