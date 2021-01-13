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
    for FILE in "$@"; do
        WD=${PWD}
        # if found file
        if [ -f "$FILE" ] || [ -d "$FILE" ]; then
            if [[ "$FILE" =~ /$ ]]; then
                echo "isDir"
                FILE="${FILE%?}"
            fi
            cd ~/.Trash
            # if found file in Trash
            if [[ -f "$FILE" || -d "$FILE" ]]; then
                i=1
                while : ; do
                    # if found file(i)
                    if [[ -f "${FILE}_${i}" || -d "${FILE}_${i}" ]]; then
                        ((i+=1))
                    else
                        mv "${WD}"/"${FILE}" ~/.Trash/"${FILE}_${i}"
                        break
                    fi
                done
            else
                mv "${WD}"/"${FILE}" ~/.Trash/
            fi
        else
            echo "File not found."
        fi
        cd "$WD"
        FILE=
    done
}

cdc () {
    mkdir $1
    cd $1
}
