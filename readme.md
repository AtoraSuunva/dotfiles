# dotfiles

Repo to store my dotfiles so I can reproduce my config on other devices. Uses ZSH + antidote.

Sets up several env vars (XDG_*) to stop some software from dumping everything in ~, and setups fnm/pnpm/cargo env if it exists.

Here for my personal use since I use GitHub to sync it (and public since I don't want to have to auth everything). You are free to use all or part of this for any purpose. I would recommend using a fork if you do though, since any change I make might (or will) break your config.

Install inspired by https://www.atlassian.com/git/tutorials/dotfiles

## Install

1. Clone the repo:
  - HTTPS: `git clone --bare https://github.com/AtoraSuunva/dotfiles.git $HOME/.cfg`
  - SSH: `git clone --bare git@github.com:AtoraSuunva/dotfiles.git $HOME/.cfg`
2. `alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
3. `dotfiles checkout`
  - This might fail if you've already installed zsh. In that case, move the conflicting files into a backup and then try again:

```sh
mkdir -p .config-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

4. `dotfiles config --local status.showUntrackedFiles no`
5. `dotfiles submodule update --init`
6. Install zsh e.g. `sudo apt install zsh`
7. `chsh -s $(which zsh)`
8. Log out and log back in

## Usage

`dotfiles` is an alias to `git` configured to track the home directory. Use `dotfiles add`, `dotfiles status`, `dotfiles push` etc as if you were normally using git.

Generally, any device mirroring the config should only use `dotfiles pull` to update and only the main device would use `dotfiles push`.

Antidote is included as a git submodule, as such it can't self-update. Use `antidote-update` to update the submodule on the main device, then commit and push.

## (Un)License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org/>

