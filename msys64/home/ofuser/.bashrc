export HISTCONTROL=ignoredups

alias ls='ls --color=auto'
alias dir='ls --color=auto --format=vertical'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Enforce the username set in USERNAME
export USER=$USERNAME

# Ensure the blueCFD software stack is mounted
. $HOME/mountBlueCFD

# Source global settings
if [ -d $HOME/.bashrc.d ]; then
    for file in $HOME/.bashrc.d/*.sh; do
        [ -e "${file}" ] && . "${file}"
    done
fi

# Activate the shell environment for OpenFOAM
. $HOME/sourceOF

# Use PS1 format that tells us which version/fork of OpenFOAM we're using
__show_version_in_PS1()
{
  [ -n "$WM_PROJECT" ] && echo " $WM_PROJECT-$WM_PROJECT_VERSION"
}

export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]$MSYSTEM`__show_version_in_PS1`\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n\$ '

# So that whenever Alt+F2 is used, the path is set to the same path from which
# it spawned
export PROMPT_COMMAND='echo -ne "\e]7;$PWD\a" ; '"$PROMPT_COMMAND"

# Other useful global aliases
alias newWindow='mintty -i /msys2.ico - &'
