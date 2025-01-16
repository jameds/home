xc() {
	if [ -t 0 ]; then
		wl-paste -n | awk 1
	else
		wl-copy -n
	fi
}
