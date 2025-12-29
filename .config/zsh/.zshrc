source ${ZDOTDIR:-~}/.zshenv
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

zstyle ':antidote:bundle' use-friendly-names 'yes'
zstyle ':prompt:pure:prompt:success' color green
zstyle ':plugin:ez-compinit' 'compstyle' 'ohmy'

antidote load
autoload -Uz promptinit && promptinit && prompt pure

fpath=("${ZSH_CACHE_DIR:-~}/completions" $fpath)
