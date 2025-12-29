# Export LANG so locale is set correctly
if locale -a | grep -q '^en_CA\.utf8$'; then
  export LANG="en_CA.UTF-8"
elif locale -a | grep -q '^en_US\.utf8$'; then
  export LANG="en_US.UTF-8"
fi

alias bat="batcat"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias antidote-update="dotfiles submodule update --remote"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$HOME/.config/zsh"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
export PYTHONSTARTUP="/etc/python/pythonrc"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export PSQL_HISTORY="$XDG_DATA_HOME/psql_history"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"

export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export HISTFILE="$XDG_STATE_HOME/zsh/history"

export SQLITE_HISTORY="$XDG_CACHE_HOME"/sqlite_history

# https://superuser.com/questions/902241/how-to-make-zsh-not-store-failed-command
zshaddhistory() {
  local j=1
  while ([[ ${${(z)1}[$j]} == *=* ]]) {
    ((j++))
  }
  whence ${${(z)1}[$j]} >| /dev/null || return 1
}

# completions
[[ -d $ZSH_CACHE_DIR/completions ]] || mkdir -p $ZSH_CACHE_DIR/completions

typeset -U path PATH

# cargo
if [ -f "$CARGO_HOME/env" ]; then
  . "$CARGO_HOME/env"
fi
# cargo end

# fnm
if (( $+commands[fnm] )); then
  eval "$(fnm env --use-on-cd)"
fi
# fnm end

# pnpm
if [ -d "$HOME/.local/share/pnpm" ]; then
  export PNPM_HOME="$HOME/.local/share/pnpm"
  path[1,0]=$PNPM_HOME
fi
# pnpm end

# macOS macports
if [ -d "/opt/local/bin" ]; then
  path[1,0]=/opt/local/bin
fi
# macOS end

# .local bin (uv)
if [ -d "$HOME/.local/bin" ]; then
  path[1,0]=$HOME/.local/bin
fi
# .local bin end

# snap
if [ -d "/snap/bin" ]; then
  path[1,0]=/snap/bin
fi
# snap end


# deno
if [[ ":$FPATH:" != *":$HOME/.config/zsh/completions:"* ]]; then
  export FPATH="$HOME/.config/zsh/completions:$FPATH"
fi

if [ -d "$HOME/.deno/bin" ]; then
  path[1,0]=$HOME/.deno/bin
fi
# deno end
