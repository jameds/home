#!/bin/sh
cd "$(dirname "$0")"
rsync -a --delete \
	--filter 'merge rsync-filters-gimp.txt' \
	~/.config/GIMP/ ../gimp/
git add ../gimp
git status ../gimp
