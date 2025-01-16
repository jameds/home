#!/bin/sh
cd "$(dirname "$0")"
rsync -a --delete --delete-missing-args \
	--filter 'merge rsync-filters.txt' ~/ ../copy/
git add ../copy
git status ../copy
