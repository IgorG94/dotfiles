# Source git completion functions
source /usr/share/bash-completion/completions/git

# git aliases
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gco="git checkout"
alias gcom="git checkout master"
alias gd="git diff"
alias gl="git log"
alias gm="git merge"
alias gp="git pull origin"
alias gpo="git push origin"
alias gs="git status"
alias gds="git diff --staged"

# Enable autocompletion for git aliases
__git_complete gb _git_branch
__git_complete gpo _git_branch
__git_complete gp _git_branch
__git_complete gco _git_checkout

# show branch name on PS1
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export PS1="${debian_chroot:+($debian_chroot)}\u@\h\[\033[00m\]:\[\033[32m\]\w\[\033[36m\]\$(parse_git_branch)\[\033[00m\]$ "

[ -f ~/.fzf.bash  ] && source ~/.fzf.bash

