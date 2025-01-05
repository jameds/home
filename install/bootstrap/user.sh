#!/bin/sh
if [ "$(id -u)" -eq 0 ]; then
	>&1 echo 'Must not be run as root!'
	exit 1
fi
set -e
cd "$(dirname "$0")"
awk -f _collect.awk user.d/*.sh | sh
