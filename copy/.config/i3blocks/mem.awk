/Mem/ {
	mem_total = $2
	mem_used = $3
	mem_avail = $7
}

/Swap/ {
	swap_total = $2
	swap_used = $3
	swap_free = $4
}

END {
	n = mem_avail / (1024*1024)
	pct = mem_used / mem_total * 100 + 0.5
	if (n < 2)
		color = "#a00"
	else if (n < 4)
		color = "#b60"
	else
		color = "#444"
	printf "<span bgcolor='%s'> MEM %3.1fG %2.0f% </span>",
		   color, mem_used / (1024*1024), pct

	pct = swap_used / swap_total * 100 + 0.5
	if (swap_free == 0)
		color = "#a00"
	else
		color = "#444"
	printf "<span bgcolor='%s'> SWAP %2.0f% </span>",
		   color, pct

	print ""
}
