snap() {
	if [ "$1" = '-s' ]; then
		shift
		grim -g "$(slurp)" ${1:+"$1"}
	else
		grim ${1:+"$1"}
	fi
}
