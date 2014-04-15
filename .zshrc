# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
plugins=(git composer)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/local/share/npm/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/sbin:/usr/local/git/bin:/Applications/acquia-drupal/drush"
# export MANPATH="/usr/local/man:$MANPATH"

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

#get and put
alias wp='wput'
alias wg='wget'
alias mp='mput'
alias mg='mget'

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias mkdir='mkdir -pv'
alias t='touch'

#list
alias l='ls -1' # Display One File Per Line
alias la='ls -lhAF' # Display file size in human readable format. Display Hidden Files
alias ll='ls -lhF' # Display file size in human readable format. Don't Display Hidden Files
alias lt="ls -lhFt" # Order files based on last modified time
alias ltr="ls -lhFtr" # Order files based on last modified time in reverse order
alias l.="ls -lhtrdF .*"

alias df='df -H'

alias h='history'

alias pt='ping www.google.com'

alias update='sudo apt-get update && sudo apt-get upgrade'

#processes
alias ps="ps aux"
alias psg="ps aux | grep"

alias g="sudo grep -Ri"
alias count="l | grep -c"

alias sz="source ~/.zshrc"
alias sub="sublime-text"

#weechat
#alias wc="weechat-curses"

#tmux
alias tm="tmux"
export EDITOR='sublime-text -w'
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
[ -z "$TMUX" ] && export TERM=xterm-256color
alias tls="tmux list-sessions"
alias tks="tmux kill-session -t"
alias tlw="tmux list-windows"

#tmuxinator
source ~/.bin/tmuxinator.zsh

#composer
alias "composer"="php ~/.composer/composer.phar"

#rbenv
eval "$(rbenv init -)"
