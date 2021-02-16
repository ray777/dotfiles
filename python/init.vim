" let g:ale_virtualtext_cursor = 1
colorscheme desert
syntax enable
set signcolumn=yes
set encoding=utf-8
set number
set relativenumber
set runtimepath+=~/.fzf
set termguicolors

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=4    " auto intent

call plug#begin(stdpath('data').'/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-commentary'

Plug 'liuchengxu/vista.vim'

Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1

Plug 'dense-analysis/ale'
call plug#end()


" Python {{{
let g:python3_host_prog='/usr/local/bin/python'
let g:ale_linters = {
      \   'python': ['pyls', 'flake8'],
      \}
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'python': [
      \       'add_blank_lines_for_python_control_statements',
      \       'autoimport',
      \       'autopep8',
      \       'black',
      \       'isort',
      \       'reorder-python-imports',
      \       'yapf'
      \   ],
      \}
let g:ale_completion_enabled = 1
" let g:ale_completion_autoimport = 1

" ftplugin/python.vim loaded every time a Python file is loaded
" override it with own setting
augroup python
    autocmd!
    " autocmd FileType python setlocal expandtab tabstop=2 softtabstop=2
    autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=8
augroup end
" }}}

set completeopt=menuone,longest
inoremap <expr> <CR>  pumvisible() ? "\<C-y>"      : "\<CR>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>"      : "\<Esc>"
inoremap <expr> <C-n> pumvisible() ? "\<Down>"     : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <C-p> pumvisible() ? "\<Up>"       : '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'
inoremap <expr> <C-d> pumvisible() ? "\<PageDown>" : "\<C-d>"
inoremap <expr> <C-u> pumvisible() ? "\<PageUp>"   : "\<C-u>"
