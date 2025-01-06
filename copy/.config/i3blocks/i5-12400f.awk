/Package id 0/ {
	t = +$2
	if (t < 40)
		color = "#060"
	else if (t < 70)
		color = "#a80"
	else if (t < 90)
		color = "#b60"
	else
		color = "#a00"
	printf "<span bgcolor='%s'> CPU %s ",
		   color, $2
}

NR != FNR {
	Hz += $1
}

END {
	printf " %2.1f GHz </span>\n", Hz / 12000000
}
