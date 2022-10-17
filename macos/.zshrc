# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tiberiuceaia/.oh-my-zsh"
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
DISABLE_UPDATE_PROMPT="true"

plugins=(git npm zsh-autosuggestions zsh-syntax-highlighting docker)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

ZSH_DISABLE_COMPFIX="true"

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi


#add work folder
if [ -d "$HOME/.bin/giffgaff" ] ;
  then PATH="$HOME/.bin/giffgaff:$PATH"
fi


# FileSearch
function f() { find . -iname "*$1*" ${@:2}; }
function r() { grep "$1" ${@:2} -R .; }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

function dlog() { docker logs -f "$@"; }

# removes node modules
function rmnm(){
  find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +
}

alias envconfig="nvim ~/.zshrc";
alias sites="cd ~/sites";
alias wjs="cd ~/work/js";
alias cask="brew install --cask"
alias dcu="docker compose up --remove-orphans -d --build;";
alias dcd="docker compose down --remove-orphans -v";
alias c='clear';
alias cnm='find . -name "node_modules" -type d -prune -exec rm -rf '{}' +'
alias refresh='source ~/.zshrc; clear;'
alias p='lpass show -c -q --password -G';
alias cat='bat --paging=never'
alias temp='cd ~/Temp'
#Tmux Aliases
#Attatch to sessions
alias tas='tmux attach-session -t'
#new session
alias ts='tmux new -s'
alias tl='tmux ls'
alias tr='tmux source-file ~/.tmux.conf' #refresh config inside tmux
alias tconf="nvim ~/.tmux.conf"
alias myip='ifconfig | grep 0xffffff00'
alias fport='lsof -i :8081'
alias kill='kill -9'

export PATH="/usr/local/bin:$PATH"
export PATH=~/.local/bin:$PATH
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export NODE_OPTIONS="--max-old-space-size=8192" #increase to 8gb


export PATH="/usr/local/sbin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
