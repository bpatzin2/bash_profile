# To use this, add "source ~/code/bash_profile/.bash_profile" to the top of ~/.profile 
# (or .bash_profile, not sure of the difference)

# git
alias g='git add -A && git commit -m'
alias ga="git add -A"
alias gc="git commit -m"
alias gpull="git pull"
alias gs="git status"

eval "$(direnv hook zsh)"

# Git branch in prompt.
# https://stackoverflow.com/questions/17333531/how-can-i-display-the-current-branch-and-folder-path-in-terminal
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{43}'
COLOR_GIT='%F{197}'
NEWLINE=$'\n'
setopt PROMPT_SUBST
export PROMPT='${COLOR_GIT}$(parse_git_branch)${COLOR_DIR}%~${COLOR_DEF}${NEWLINE}$ '
