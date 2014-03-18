ZSH=$HOME/.oh-my-zsh

# Set ZSH theme to Houston.
ZSH_THEME="houston"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias redis="redis-server /usr/local/etc/redis.conf"
alias gl="git log --graph --decorate --oneline"
alias gll="git log --graph --decorate"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git rails ruby bundler bower brew gem)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/Joseph/On-Site/scripts/osm/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/sbin:$PATH"
export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Added by RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

stty erase ^H

POSTGRES_USER="joseph"
POSTGRES_PASS=""
APP_HOST="localhost"
APP_PORT="3000"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"



