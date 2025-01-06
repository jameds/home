xc() {
	if [ -t 0 ]; then
		xclip -sel c -o | awk 1
	else
		xclip -sel c -i
	fi
}
