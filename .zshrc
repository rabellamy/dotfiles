# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

DEFAULT_USER="rabellamy"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(composer berkshelf brew bundler git knife tmux tmuxinator vagrant docker)

source $ZSH/oh-my-zsh.sh

# User configuration

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

###################################################################################################################
#                                                       Shell
###################################################################################################################
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias agi="sudo apt-get install"

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias mkdir='mkdir -pv'

# list
alias l='ls -1'       # Display One File Per Line
alias la='ls -lhAF'   # Display file size in human readable format. Display Hidden Files
alias ll='ls -lhF'    # Display file size in human readable format. Don't Display Hidden Files
alias lt="ls -lhFt"   # Order files based on last modified time
alias ltr="ls -lhFtr" # Order files based on last modified time in reverse order
alias l.="ls -lhtrdF .*"

alias df='df -H'

alias h='history'

alias k='kubectl'

alias sz="source ~/.zshrc"

export EDITOR='vim'
export KUBE_EDITOR='vim'

# tmux
[ -z "$TMUX" ] && export TERM=xterm-256color
# source ~/.bin/tmuxinator.zsh

# go
export GOPATH=~/projects/Go
PATH=$PATH:~/projects/Go/bin
export GOBIN=~/projects/Go/bin

alias sn="pmset sleepnow"

export PATH=~/.node/bin:$PATH

eval "$(rig config)"
export GPG_TTY=$(tty)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export ANDROID_NDK=/Users/rbellamy/Library/Android/sdk/ndk-bundle
export ANDROID_NDK_HOME=/Users/rbellamy/Library/Android/sdk/ndk-bundle

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rbellamy/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/rbellamy/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rbellamy/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/rbellamy/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
# export PATH="/usr/local/opt/go@1.9/bin:$PATH"
export PATH="/usr/local/opt/m4/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
