
source ~/.profile

source ~/.megalodon.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PATH=/usr/local/php5/bin:$PATH

export PATH=$PATH:/usr/local/mysql/bin

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export PATH=$PATH:/usr/local/go/bin

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(pyenv-virtualenv-auto init)"
export PATH="$PATH:$HOME/.ndenv/bin"
eval "$(ndenv init -)"
