export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$HOME"/.config/zsh
export PYTHONSTARTUP="/etc/python/pythonrc"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export ZSH="$XDG_DATA_HOME/oh-my-zsh"
export PSQL_HISTORY="$XDG_DATA_HOME/psql_history"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"

export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export TS_NODE_HISTORY="$XDG_STATE_HOME/ts_node_repl_history"
export HISTFILE="$XDG_STATE_HOME/zsh/history"

export SQLITE_HISTORY="$XDG_CACHE_HOME"/sqlite_history

. "$CARGO_HOME/env"

# fnm
export PATH="/home/gduck/.local/share/fnm:$PATH"
eval "$(fnm env --use-on-cd)"
# fnm end

# pnpm
export PNPM_HOME="/home/gduck/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
. "/home/gduck/.local/share/cargo/env"
