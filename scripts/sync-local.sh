#!/bin/sh
set -e
set -o pipefail
if [ "$(id -u)" -ne 0 ]; then
	>&2 echo "$0: this program must be run as root!"
	exit 1
fi
dest="$1"
if ! [ ${dest:+x} ]; then
	>&2 echo "$0: destination missing"
	exit 1
fi
cd "$(dirname "$0")"
rsync \
	--verbose \
	--human-readable \
	--archive \
	--one-file-system \
	--delete-after \
	--delete-missing-args \
	--filter 'merge rsync-filters-local.txt' \
	/home/ \
	"$dest"
