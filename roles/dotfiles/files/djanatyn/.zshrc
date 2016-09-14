# check for oh-my-zsh install.
if [ ! -d $HOME/.oh-my-zsh ]; then
  echo "installing oh my zsh..."
  git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh &>/dev/null
fi

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="steeef"

DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="mm/dd/yyyy"

plugins=(git vi-mode gpg-agent ssh-agent)

source $ZSH/oh-my-zsh.sh

# i only ever go to places with ssh
export TZ='America/New_York'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR='vim'
export TERM=screen-256color

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
