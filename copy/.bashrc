#
# ~/.bashrc
#

export PATH="$HOME/sh/bin:$HOME/bin-local:$PATH"
umask 027

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

. <(cat ~/sh/rc/*)
eval "$(~/.local/bin/mise activate bash)"
export VIRTUAL_ENV_DISABLE_PROMPT=1

shopt -s dotglob # let me glob dot files!

export EDITOR=vim
export LC_COLLATE=C # makes ls sort by codepoint

export PS1='\[\e[37;40m\]\u@\h \w\[\e[0m\]\n'

[ "$(tty)" = /dev/tty3 ] && exec startx &> ~/.Xlog

# For some reason, less command turns highlights into
# italics when TERM=screen. xterm works.
[ -z "$STY" ] && exec screen -q -T xterm
