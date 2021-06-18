# To use this, add "source ~/code/bash_profile/.bash_profile" to the top of ~/.profile 
# (or .bash_profile, not sure of the difference)


# git
alias g='git add -A && git commit -m'
alias ga="git add -A"
alias gc="git commit -m"
alias gpull="git pull"
alias gs="git status"

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[31m\](\W)\[\033[32m\]\$(parse_git_branch)\[\033[00m\]\n\u$\[\033[00m\] "
