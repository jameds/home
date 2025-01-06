#!/bin/sh
cd "$(dirname "$0")"
rsync -a --delete \
	--filter 'merge rsync-filters.txt' ~/ ../copy/
git add ../copy
git status ../copy
