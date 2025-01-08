_ls='command ls --color=auto -A -h'
alias   l="$_ls -C"
alias  ls="$_ls -lr"
alias lst="$_ls -1ctr"

alias grepr='grep -r -n'

cdf () {
	[ $# -eq 0 ] && set -- ~
	mkdir -p "$@"
	cd "${@: -1}"
}

alias md='mkdir -p'
