set number
set rtp+=~/.fzf

call plug#begin(stdpath('data').'/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-commentary'

Plug 'liuchengxu/vista.vim'

let g:python3_host_prog='/usr/local/bin/python'
let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \}
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'python': ['yapf'],
      \}
let g:ale_completion_enabled = 1
Plug 'dense-analysis/ale'
call plug#end()
