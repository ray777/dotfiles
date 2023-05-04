# Setup environment
- Terminal
  - [Homebrew](#homebrew)
  - [kitty](#kitty)
- Configs
  - `git clone https://github.com/ray777/dotfiles.git`
  - `rm ~/.bash_profile ~/.bashrc ~/.tmux.conf ~/.vimrc`
  - `ln -s ~/dotfiles/.bash_profile ~/dotfiles/.bashrc ~/dotfiles/.tmux.conf ~/dotfiles/.vimrc ~/`
- Bash
  - [bash-completion](#bash-completion)
  - [fd](#fd)
  - [fzf](#fzf)
- Tmux
  - [tmux](#tmux)
  - [reattach-to-user-namespace](#reattach-to-user-namespace)
- Vim
  - [vim-plug](#vim-plug)
  - `:PlugInstall`
- Keyboard remap
  - setxkbmap


# Reference

### bash-completion
- https://github.com/scop/bash-completion
- `brew install bash-completion`

### fd
- https://github.com/sharkdp/fd
- `brew install fd`

### fzf
- https://github.com/junegunn/fzf
- `brew install fzf`
- `/usr/local/opt/fzf/install`

### Homebrew
- https://brew.sh/
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `brew install cask`

### kitty
- https://github.com/kovidgoyal/kitty
- `brew cask install kitty`

### reattach-to-user-namespace
- https://formulae.brew.sh/formula/reattach-to-user-namespace
- `brew install reattach-to-user-namespace`

### tmux
- https://github.com/tmux/tmux
- `brew install tmux`

### vim-plug
- https://github.com/junegunn/vim-plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
