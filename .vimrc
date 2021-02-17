" @see https://dougblack.io/words/a-good-vimrc.html
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'
let g:python3_host_prog='/usr/local/bin/python3'
let g:org_agenda_files=['~/org/index.org']

" gradle build android
function! GradleInstallHknUat()
    exe "!tmux send -t 1 './gradlew installHknUatDebug' Enter"
endfunc

" Colors {{{
colorscheme monokai
syntax enable           " enable syntax processing
" }}}
" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
" }}}
" UI Config {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]

set relativenumber      " show line number relatively
" }}}
" Searching {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max

" space open/closes folds
nnoremap <space> za
" set foldmethod=indent   " fold based on indent level
" }}}
" Movement {{{
" move vertically by visual line
" nnoremap j gj
" nnoremap k gk

" move to beginning/end of line
" nnoremap B ^
" nnoremap E $

" $/^ doesn't do anything
" nnoremap $ <nop>
" nnoremap ^ <nop>

" highlight last inserted text
" nnoremap gV `[v`]
" }}}
" Leader Shortcuts {{{
let mapleader="\<Space>"
let maplocalleader="\<Space>\<Space>"

" jk is escape
" inoremap jk <esc>

" toggle gundo
" nnoremap <Leader>u :GundoToggle<CR>

" edit vimrc/zshrc and load vimrc bindings
" nnoremap <Leader>ev :vsp $MYVIMRC<CR>
" nnoremap <Leader>ez :vsp ~/.zshrc<CR>
" nnoremap <Leader>sv :source $MYVIMRC<CR>

" save session
nnoremap <Leader>s :mksession<CR>

" open ag.vim
nnoremap <Leader>a :Ag
" }}}
" Launch Config {{{
call plug#begin('~/.vim/plugged')

" Tim Pope {{{
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
" }}}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" LSP {{{
" @deprecated
Plug 'Shougo/deoplete.nvim' | Plug 'roxma/nvim-yarp' | Plug 'roxma/vim-hug-neovim-rpc'
" @deprecated
" Plug 'w0rp/ale'
" Plug 'dense-analysis/ale'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'udalov/kotlin-vim'

Plug 'dart-lang/dart-vim-plugin'
" }}}

Plug 'ervandew/supertab'
Plug 'mhinz/vim-grepper'
Plug 'preservim/nerdtree'
Plug 'kshenoy/vim-signature'
Plug 'jceb/vim-orgmode'

" Junegunn Choi
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
let g:peekaboo_delay = 300
call plug#end()
" }}}
" Tmux {{{
" allows cursor change in tmux mode
" if exists('$TMUX')
"     let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"     let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" else
"     let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"     let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" endif
" }}}
" Autogroups {{{
" augroup configgroup
"     autocmd!
"     autocmd VimEnter * highlight clear SignColumn
"     autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
"                 \:call <SID>StripTrailingWhitespaces()
"     autocmd FileType java setlocal noexpandtab
"     autocmd FileType java setlocal list
"     autocmd FileType java setlocal listchars=tab:+\ ,eol:-
"     autocmd FileType java setlocal formatprg=par\ -w80\ -T4
"     autocmd FileType php setlocal expandtab
"     autocmd FileType php setlocal list
"     autocmd FileType php setlocal listchars=tab:+\ ,eol:-
"     autocmd FileType php setlocal formatprg=par\ -w80\ -T4
"     autocmd FileType ruby setlocal tabstop=2
"     autocmd FileType ruby setlocal shiftwidth=2
"     autocmd FileType ruby setlocal softtabstop=2
"     autocmd FileType ruby setlocal commentstring=#\ %s
"     autocmd FileType python setlocal commentstring=#\ %s
"     autocmd BufEnter *.cls setlocal filetype=java
"     autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"     autocmd BufEnter Makefile setlocal noexpandtab
"     autocmd BufEnter *.sh setlocal tabstop=2
"     autocmd BufEnter *.sh setlocal shiftwidth=2
"     autocmd BufEnter *.sh setlocal softtabstop=2
" augroup END
" }}}
" Backups {{{
" set backup
" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set backupskip=/tmp/*,/private/tmp/*
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set writebackup
" }}}
" Custom Functions {{{
" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
" }}}
" terminal {{{
if &term==#"screen"
    set term=xterm
elseif &term==#"screen-256color"
    set term=xterm-256color
endif
"}}}
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
" TODO: Review below {{{
" Line numbers
set shiftwidth=4
set autoindent
set smartindent
set bs=2
set splitright
set splitbelow
set completeopt+=preview
set sessionoptions-=options
set noequalalways
set termguicolors

nnoremap <C-l> :buffers<CR>
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

nnoremap <Leader>o :FZF<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

let g:grepper = {}
let g:grepper.tools = ['ag']
" }}}
" ALE {{{
" " https://github.com/georgewfraser/java-language-server/pull/64#issuecomment-504544437
" let g:android_sdk_path = '~/Library/Android/sdk/'
" let g:gradle_loclist_show = 0
" let g:gradle_show_signs = 0
" " ~/.vim/after/ftplugin/java.vim
" let g:ale_java_javalsp_executable = '/usr/local/bin/jdtls'
" " ~/.vim/after/ftplugin/kotlin.vim
" let g:ale_kotlin_languageserver_executable = 'kotlin-language-server'

" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_warn_about_trailing_whitespace=0

" let g:ale_lint_on_save=1
" let g:ale_lint_on_text_changed='never'
" let g:ale_linters = {
"     \ 'kotlin': ['ktlint', 'languageserver', 'android'],
"     \ 'java': ['checkstyle', 'javalsp', 'android'],
"     \ 'javascript': ['standard', 'flow-language-server'],
"     \ 'python': ['flake8', 'mypy', 'pylint', 'pyls'],
"     \ }

" let g:ale_fix_on_save=0
" let g:ale_fix_on_text_changed='never'
" let g:ale_fixers = {
"     \ '*': ['remove_trailing_lines', 'trim_whitespace'],
"     \ 'javascript': ['standard'],
"     \ 'python': [
"     \   'remove_trailing_lines',
"     \   'isort',
"     \   'ale#fixers#generic_python#BreakUpLongLines',
"     \   'yapf',
"     \ ]
"     \ }

" call deoplete#custom#option('sources', {
" \ '_': ['ale', 'foobar'],
" \})
" let g:ale_completion_enabled = 1
" set omnifunc=ale#completion#OmniFunc
" }}}
" Keep the gutter always expanded {{{
" @see https://superuser.com/questions/558876/how-can-i-make-the-sign-column-show-up-all-the-time-even-if-no-signs-have-been-a
" autocmd BufEnter * sign define dummy
" autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
set signcolumn=yes
" }}}
" vim:foldmethod=marker:foldlevel=0
