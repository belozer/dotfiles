
# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
ZSH_THEME="refined"
ZSH_THEME="bureau"
ZSH_THEME="avit"

# ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git git-flow git-extras yarn zsh_reload gulp docker docker-compose jira)

source $ZSH/oh-my-zsh.sh

# Snappy
export PATH=/snap/bin:$PATH

# LinuxBrew
export PATH=$HOME/.linuxbrew/bin:$PATH
export MANPATH=$HOME/.linuxbrew/share/man:$MANPATH
export INFOPATH=$HOME/.linuxbrew/share/info:$INFOPATH


# NodeJS
export NODE_PATH=:$HOME/npm/lib/node_modules
export PATH=./node_modules/.bin:$PATH

#
# autoload -U add-zsh-hook
# load-nvmrc() {
#   if [[ -f .nvmrc && -r .nvmrc ]]; then
#     nvm use
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc

# System settings
export EDITOR="nvim"

# Aliases
alias e=$EDITOR

prompt_context() {
    prompt_segment black default 🐺
}

if [[ $TILIX_ID ]]; then
    source /etc/profile.d/vte.sh
fi

# Blur for terminal
if [[ $(ps --no-header -p $PPID -o comm) =~ tilix ]]; then
    for wid in $(xdotool search --pid $PPID); do
        xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
fi

# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm
#
# alias node='unalias node ; unalias npm ; nvm use default ; node $@'
# alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'
#


# Install zsh-async if it’s not present
if [[ ! -a ~/.zsh-async ]]; then
  git clone git@github.com:mafredri/zsh-async.git ~/.zsh-async
fi
source ~/.zsh-async/async.zsh

export NVM_DIR="$HOME/.nvm"
function load_nvm() {
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

# Initialize a new worker
async_start_worker nvm_worker -n
async_register_callback nvm_worker load_nvm
async_job nvm_worker sleep 0.1

export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"
