#!/bin/sh
if [ "$(id -u)" -ne 0 ]; then
	>&1 echo 'Must be run as root!'
	exit 1
fi
awk -f _collect.awk root.d/*.sh | sh
