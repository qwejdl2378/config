export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export TERM='xterm-256color'

export ZSH="/home/docker/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(git)

source $ZSH/oh-my-zsh.sh
