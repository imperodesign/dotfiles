# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Environment configuration
export NODE_ENV=development
export EDITOR=$(which vim)

# Customise shell
export CLICOLOR=1
export TERM=xterm-256color
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\n\[\e[33m\]\W\[\e[m\] \[\e[37m\]\$\[\e[m\] "
source $HOME/base16-builder/output/shell/base16-eighties.dark.sh

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# Import aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# PATH
export PATH=$PATH:~/.local/bin

# Python
source $HOME/.local/bin/virtualenvwrapper.sh

# JavaScript
export PATH=$PATH:/home/yosh/flow
export NVM_DIR=~/.nvm
export NODE_ENV=development
source $NVM_DIR/nvm.sh

# Golang
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

# Ansible
export ANSIBLE_COW_SELECTION=random

# enable programmable completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Linuxbrew
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

open() {
  nautilus $1
}

unset JAVA_TOOL_OPTIONS
