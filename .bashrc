#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

function __virtualenv_ps1 {
    echo "${VIRTUAL_ENV:+(${VIRTUAL_ENV##*/})}"
}
parse_git_branch() {
    git branch 2>/dev/null | grep '^*' | colrm 1 2
}
PS1="\n\$(__virtualenv_ps1)[\u@\h \e[1;36m\W\e[0m] \e[2;35m\$(parse_git_branch)\e[0m\n\$ "

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Alias
alias vi='nvim'
alias vim='nvim'
alias config='/usr/bin/git --git-dir=/home/iamaakashbasnet/dotfiles --work-tree=/home/iamaakashbasnet'
