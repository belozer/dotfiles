# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
# ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git git-flow git-extras yarn zsh_reload gulp docker docker-compose)

source $ZSH/oh-my-zsh.sh


# Snappy
export PATH=/snap/bin:$PATH


# LinuxBrew
export PATH=$HOME/.linuxbrew/bin:$PATH


# NodeJS
export NODE_PATH=:$HOME/npm/lib/node_modules
export PATH=./node_modules/.bin:$PATH

[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
. ~/.nvm/nvm.sh

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# System settings
export EDITOR="nvim"

# Aliases
alias e=$EDITOR
alias bemblock='bem create -l desktop.blocks -b'
alias bempage='bem create -l desktop.bundles -b'

prompt_context() {}

if [[ $TILIX_ID ]]; then
    source /etc/profile.d/vte.sh
fi

nvm use 8
