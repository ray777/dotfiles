if &term==#"screen"
    set term=xterm
elseif &term==#"screen-256color"
    set term=xterm-256color
endif

colorscheme desert

let g:ale_linters = {
      \ 'javascript': ['standard', 'flow-language-server'],
      \ }
let g:ale_fixers = {
      \ 'javascript': ['standard'],
      \ }

" Line numbers
set number " show line number
set relativenumber " show line number relatively
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set smartindent
set bs=2
set splitright
set splitbelow
set cursorline
set hls
set completeopt+=preview
set sessionoptions-=options
set noequalalways
set termguicolors

" Key Bindings
let mapleader = "\<Space>"

nnoremap <C-l> :buffers<CR>
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

nnoremap <leader>o :FZF<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" -- Search for selected text, forwards or backwards. {{{
vnoremap <silent> * :<C-U>
 \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
 \gvy/<C-R><C-R>=substitute(
 \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
 \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
 \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
 \gvy?<C-R><C-R>=substitute(
 \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
 \gV:call setreg('"', old_reg, old_regtype)<CR>
" -- Search for selected text, forwards or backwards. }}}

" Plugin configs
let g:peekaboo_delay = 300

" junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Tim Pope
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-git'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-apathy'
Plug 'tpope/vim-classpath'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Shougo/deoplete.nvim' | Plug 'roxma/nvim-yarp' | Plug 'roxma/vim-hug-neovim-rpc'
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree'
Plug 'kshenoy/vim-signature'

" Junegunn Choi
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'

call plug#end()

let g:deoplete#enable_at_startup = 1

" Keep the gutter always expanded
" @see https://superuser.com/questions/558876/how-can-i-make-the-sign-column-show-up-all-the-time-even-if-no-signs-have-been-a
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
