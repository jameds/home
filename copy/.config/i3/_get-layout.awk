BEGIN {
	FS="\t"
	OFS="\t"
	split(Match, _, "\n")
	for (k in _) MatchArray[_[k]]
	Layouts = ENVIRON["PWD"] "/layouts/"
}

/^i3wm.workspace./ {
	sub(/^i3wm.workspace./, "")
	sub(/:$/, "", $1)
	if ($1 in MatchArray)
	{
		print "workspace " $2
		print "append_layout " Layouts $1 ".json"
		system("cat " Layouts $1 ".txt")
	}
}
