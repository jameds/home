function get_color(f) {
	if (+f > +LOAD_LIMIT)
		return "#a80"
	else
		return "#333"
}

{
	c1 = get_color($1)
	c2 = get_color($2)
	c3 = get_color($3)
	printf " load \
<span bgcolor='%s'> %s </span>\
<span bgcolor='%s'> %s </span>\
<span bgcolor='%s'> %s </span>\n",
c1, $1, c2, $2, c3, $3
}
