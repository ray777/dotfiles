TIL

9 May 2017

1. gf > go to folder
2. fzf > fuzzy finder to find files
3. map key

## Vim-plug
A minimalist Vim plugin manager  
https://github.com/junegunn/vim-plug

### Installation
Download plug.vim and put it in the "autoload" directory.
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Update .vimrc.
```sh
" vim-plug
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Initialize plugin system
call plug#end()
```


## fzf.vim
fzf is a general-purpose command-line fuzzy find  
https://github.com/junegunn/fzf.vim

### Installation
Download plug.vim and put it in the "autoload" directory.
```sh
brew install fzf
```
Update .vimrc within vim-plug section.
```sh
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
```

