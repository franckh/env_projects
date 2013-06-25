#!/bin/sh
echo 'load ~/dev/home/.bash_profile'

source ~/.bash/aliases.bash
#source ~/.bash/functions
source ~/.bash/completions.bash
#source ~/.bash/paths
#source ~/.bash/config
#source ~/.bash/history_config

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Enable RVM
#[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# prompt
if [ `declare -F __git_ps1` ]; then
    # git available
    export PS1='\[\033]0;$MSYSTEM:\w\007\033[32m\]\[\033[1;36m\w$(__git_ps1)\033[0m\] \n$ '
else
    export PS1="\e[1;36m[\!]\w# \e[m"
fi
