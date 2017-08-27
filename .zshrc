# ZSH CONFIG
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
ZSH_THEME="agnoster"

DISABLE_UPDATE_PROMPT=true
plugins=(git)
export PATH="/usr/bin:/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
source $ZSH/oh-my-zsh.sh

alias g=git
alias dc=docker-compose
alias de=docker exec

export TERM="xterm-256color-italic"
# export TERM="xterm-256color"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
