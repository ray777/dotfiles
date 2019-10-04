[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export LANG="en_US.UTF-8"
export LSCOLORS='Exfxcxdxbxegedabagacad'
export CLICOLOR=1
export PS1='\h:\W \u\$ '
export IGNOREEOF=5

alias gco='git checkout'
alias gffp='git fetch && git fetch --prune && git pull'
alias gd='clear && git diff'
alias gl='git log --oneline --abbrev-commit --graph --decorate --color'
alias gs='clear && git status'
alias gsl='git stash list'

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
function _fzf_compgen_path() {
    fd --no-ignore --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
function _fzf_compgen_dir() {
    fd --type d --no-ignore --hidden --follow --exclude ".git" . "$1"
}

# Use fd for default fzf invocation
export FZF_DEFAULT_COMMAND='fd --type file --no-ignore --follow --hidden --exclude .git'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
