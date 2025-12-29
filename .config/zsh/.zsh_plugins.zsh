fpath+=( $HOME/.cache/antidote/mattmc3/ez-compinit )
source $HOME/.cache/antidote/mattmc3/ez-compinit/ez-compinit.plugin.zsh
fpath+=( $HOME/.cache/antidote/zsh-users/zsh-completions/src )
fpath+=( $HOME/.cache/antidote/zsh-users/zsh-autosuggestions )
source $HOME/.cache/antidote/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
if ! (( $+functions[zsh-defer] )); then
  fpath+=( $HOME/.cache/antidote/romkatv/zsh-defer )
  source $HOME/.cache/antidote/romkatv/zsh-defer/zsh-defer.plugin.zsh
fi
fpath+=( $HOME/.cache/antidote/zdharma-continuum/fast-syntax-highlighting )
zsh-defer source $HOME/.cache/antidote/zdharma-continuum/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fpath+=( $HOME/.cache/antidote/ohmyzsh/ohmyzsh/plugins/mise )
source $HOME/.cache/antidote/ohmyzsh/ohmyzsh/plugins/mise/mise.plugin.zsh
fpath+=( $HOME/.cache/antidote/ohmyzsh/ohmyzsh/plugins/gpg-agent )
source $HOME/.cache/antidote/ohmyzsh/ohmyzsh/plugins/gpg-agent/gpg-agent.plugin.zsh
fpath+=( $HOME/.cache/antidote/ohmyzsh/ohmyzsh/plugins/extract )
source $HOME/.cache/antidote/ohmyzsh/ohmyzsh/plugins/extract/extract.plugin.zsh
fpath+=( $HOME/.cache/antidote/mattmc3/zephyr/plugins/color )
source $HOME/.cache/antidote/mattmc3/zephyr/plugins/color/color.plugin.zsh
fpath+=( $HOME/.cache/antidote/mattmc3/zephyr/plugins/completion )
source $HOME/.cache/antidote/mattmc3/zephyr/plugins/completion/completion.plugin.zsh
fpath+=( $HOME/.cache/antidote/mattmc3/zephyr/plugins/editor )
source $HOME/.cache/antidote/mattmc3/zephyr/plugins/editor/editor.plugin.zsh
fpath+=( $HOME/.cache/antidote/mattmc3/zephyr/plugins/history )
source $HOME/.cache/antidote/mattmc3/zephyr/plugins/history/history.plugin.zsh
fpath+=( $HOME/.cache/antidote/jirutka/zsh-shift-select )
source $HOME/.cache/antidote/jirutka/zsh-shift-select/zsh-shift-select.plugin.zsh
fpath+=( $HOME/.cache/antidote/sindresorhus/pure )
