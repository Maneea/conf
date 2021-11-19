#############################################################
#               GENERAL (DEFAULT) SETTINGS                  #
#############################################################

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable bash completion in interactive shells
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi


# if the command-not-found package is installed, use it
if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
    function command_not_found_handle {
        # check because c-n-f could've been removed in the meantime
        if [ -x /usr/lib/command-not-found ]; then
            /usr/lib/command-not-found -- "$1"
            return $?
        elif [ -x /usr/share/command-not-found/command-not-found ]; then
            /usr/share/command-not-found/command-not-found -- "$1"
            return $?
        else
            printf "%s: command not found\n" "$1" >&2
            return 127
        fi
    }
fi


#############################################################
#                           ALIASES                         #
#############################################################

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias c='clear'
alias g='git'
alias d='docker'
alias e='echo'
alias p='printf'

#############################################################
#                           ENV VARS                        #
#############################################################

# Current git branch (For shell prompt)
gbrnch(){
    CURRENT_GIT_BRANCH=$(g branch --show-current 2>/dev/null)
    if [ ! -z $CURRENT_GIT_BRANCH ] ; then
        printf "[$CURRENT_GIT_BRANCH]"
    fi
}

# Prompt (16-bit colors)
PS1="\[\033[1m\]"           # Bold
PS1="$PS1\[\033[93m\]"      # Yellow
PS1="$PS1 \u@\H "           # Username & machine name
PS1="$PS1\[\033[32m\]"      # Green
PS1="$PS1\w"                # Working directory
PS1="$PS1\[\033[34m\]"      # Blue
PS1="$PS1\$(gbrnch)"        # Git branch
PS1="$PS1\[\033[32m\]"      # Green
PS1="$PS1$ "                # Prompt sign
PS1="$PS1\[\033[0m\]"       # Restore normal colors
