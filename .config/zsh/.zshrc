source ${ZDOTDIR:-~}/.zshenv
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

zstyle ':antidote:bundle' use-friendly-names 'yes'
zstyle ':prompt:pure:prompt:success' color green

antidote load
autoload -Uz promptinit && promptinit && prompt pure

compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

alias bat="batcat"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
