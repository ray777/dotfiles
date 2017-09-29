" Syntax highlighting
syntax on

" Line numbers
set number " show line number
set relativenumber " show line number relatively

set nobackup
set noswapfile
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set smartindent
set bs=2
set noautochdir
set nu
set hlsearch

execute pathogen#infect()

let mapleader = "\<Space>"

" airline
set laststatus=2

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v

map <leader>n :NERDTreeToggle<CR>
map <leader>o :FZF<CR>

" vim-plug
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

