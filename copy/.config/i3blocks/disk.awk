NR==2 {
	n = +$4
	if (n < 10*1024*1024)
		color = "#a00"
	else if (n < 20*1024*1024)
		color = "#a80"
	else
		color = "#333"
	printf "\
<span bgcolor='%s'> %s %4.1fG %2d% </span>\n",
		  color, $1, $2/(1024*1024), $3
}
