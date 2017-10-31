export ZSH=/home/nstefani/.oh-my-zsh

ZSH_THEME="cypher"
DISABLE_AUTO_TITLE=true

#Plugins 
plugins=(git dnf pip docker docker-compose rsync)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=es_AR.UTF-8

# PATH additions
PATH=$PATH:~/.local/bin:~/.pyenv/bin

# PYENV setup
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
#pyenv virtualenvwrapper_lazy
#export PYENV_VIRTUALENVWRAPPER_PREFER_PYENV="true"

#virtualenvwrapper init
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.Envs
export PROJECT_HOME=$HOME/Codigo

#Pipenv eval 
eval "$(pipenv --completion)"

# Aliases
eval "$(thefuck --alias)"
alias ls='ls --color=auto'
alias meteo="curl 'http://wttr.in/cordoba?lang=es'"
alias tmux='tmux -2'
alias vim='nvim'

#Call script for download subs 
alias download='~/Codigo/scripts/download_sub.sh'

#Default Editor
export EDITOR="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#[ -z "$TMUX" ] && export TERM=xterm-256color && exec tmux
