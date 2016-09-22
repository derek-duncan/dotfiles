# ZSH CONFIG
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="agnoster"

DISABLE_UPDATE_PROMPT=true
plugins=(git)
export PATH="/usr/bin:/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"
source $ZSH/oh-my-zsh.sh
alias g=git
