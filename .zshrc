# Path to your oh-my-zsh installation.
export ZSH="/home/lloyd/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
)

# Source
source $ZSH/oh-my-zsh.sh

# Change ls colours
LS_COLORS="ow=01;36;40" && export LS_COLORS

# Make cd use the ls colours
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit

# Git
alias add="git add -A"
alias push="git push -u origin master"
alias pull="git pull"
alias stat="git status"
alias log="git log"
alias dev="git checkout develop && git pull origin develop"

# Git Commit Function
function co {
  git add -A && git commit -m "$@"
}

# Git Clone Function
function cl {
  git clone "$@"
}

# Git Branch Push Fucntion
function gpo {
  git push origin $@
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Use NVM when needed for speed increase on startup
function initnvm {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

# Set default editor to vim
export VISUAL=vim
export EDITOR="$VISUAL"

# Auto suggest
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Powershell switch
alias power="powershell.exe"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"