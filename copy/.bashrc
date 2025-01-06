#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/sh/bin:$HOME/bin-local:$PATH"

. <(cat ~/sh/rc/*)

export EDITOR=vim
export LC_COLLATE=C # makes ls sort by codepoint

export PS1='\[\e[37;40m\]\u@\h \w\[\e[0m\]\n'

umask 027

[ "$(tty)" = /dev/tty3 ] && exec startx

# For some reason, less command turns highlights into
# italics when TERM=screen (inside rxvt-unicode). xterm
# works.
[ -z "$STY" ] && exec screen -q -T xterm
