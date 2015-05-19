# Environment configuration
export NODE_ENV=development
export EDITOR=$(which vim)

# Customise shell
export CLICOLOR=1
export TERM=xterm-256color
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\n\[\e[33m\]\W\[\e[m\] \[\e[37m\]\$\[\e[m\] "

# Aliases
alias ll='ls -FGlAhp'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# Open directory in OS X Finder
finder() {
  open -a Finder $1
}

# Bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Node.js
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Ansible
export ANSIBLE_COW_SELECTION=random
