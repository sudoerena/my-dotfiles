# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vi

alias ..='cd ..'
alias ...='. ~/.bashrc'
alias h='history|grep'
alias dirs='dirs -v'
# clear stack with 'dirs -c'
alias trash='mv -t ~/.Trash'

cdc () {
  mkdir $1
  cd $1
}
