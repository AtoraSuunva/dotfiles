alias bat="batcat"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias antidote-update="dotfiles submodule update --remote"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$HOME"/.config/zsh
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
