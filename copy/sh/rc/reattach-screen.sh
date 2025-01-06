reattach-screen() {
	screen -r "$(\
		screen -list | awk '/Detached/{print$1;exit}')"
}
