/wlan0/ {
	sub(":", "")
	seg = int(1 + $3/70 * 5)
	if (seg < 3)
		color = "#a00"
	else if (seg < 4)
		color = "#b50"
	else
		color = "#080"
	printf "<span bgcolor='%s'> %s %.*s%.*s </span>\n",
		   color, $1, seg, "■■■■■", 5 - seg, "□□□□□"
}
