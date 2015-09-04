alias l='ls'
alias ll='ls -l'
alias la='ls -al'

cd ()
{
    builtin cd "$@" && ls
}

source /etc/bash_completion.d/git-prompt
if [ -f $BASH_COMPLETION_DIR/git ]; then
    export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\w$(__git_ps1)\[\033[01;34m\]\$\[\033[00m\] '
else
    export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[01;34m\]\$\[\033[00m\] '
fi

