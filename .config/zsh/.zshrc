source ${ZDOTDIR:-~}/.zshenv
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

zstyle ':antidote:bundle' use-friendly-names 'yes'
zstyle ':prompt:pure:prompt:success' color green

antidote load
autoload -Uz promptinit && promptinit && prompt pure

fpath=("${ZDOTDIR:-~}/completions" $fpath)
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
