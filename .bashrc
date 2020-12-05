# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# source racket completion
source /usr/local/racket/share/pkgs/shell-completion/racket-completion.bash

set -o vi

alias ..='cd ..'
alias ...='. ~/.bashrc'
alias h='history|grep'
alias dirs='dirs -v'
# clear stack with 'dirs -c'

# ADD check for existing
# alias trash='mv -t ~/.Trash'
trash () {
    LIST="$@"
    i=1
    for FILE in "$@"; do
        # if found file
        if [ -f "$FILE" ] || [ -d "$FILE" ]; then
            if [ -d "$FILE" ]; then
                        FILE="${FILE%?}"
            fi
            WD=${PWD}
            cd ~/.Trash
            # if found file in Trash
            if [ -f "$FILE" ] || [ -d "$FILE" ]; then
                while : ; do
                    # if found file(i)
                    if [ -f "${FILE}(${i})" ] || [ -d "${FILE}(${i})" ]; then
                        ((i+=1))
                    else
                        mv "${WD}"/"${FILE}" ~/.Trash/"${FILE}(${i})"
                        break
                    fi
                done
            else
                mv "${WD}"/"${FILE}" ~/.Trash/
            fi
        fi
        LIST=
        FILE=
    done
    cd "$WD"
}

cdc () {
    mkdir $1
    cd $1
}
