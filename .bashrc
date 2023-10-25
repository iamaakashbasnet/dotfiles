#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# pfetch
echo
pfetch

# starship prompt
eval "$(starship init bash)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# vcpkg
export PATH="$HOME/vcpkg:$PATH"

# aliases
alias vi="nvim"
alias vim="nvim"

# dotfiles config
alias config='/usr/bin/git --git-dir=/home/iamaakashbasnet/.dotfiles/ --work-tree=/home/iamaakashbasnet'
