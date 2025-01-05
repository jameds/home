FNR==1 {
	line = sprintf("###  BOOTSTRAP  %s  ...  ", FILENAME)
	pad = sprintf("%*s", length(line), "")
	printf "\033[7m%s\n%s\n%s\033[0m\n", pad, line, pad
}
1
