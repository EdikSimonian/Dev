export ASPNETCORE_ENVIRONMENT=Development
alias sudo='sudo '

# Bash
alias pro='vi ~/.bash_profile'
alias src='source ~/.bash_profile'
alias pub='cat ~/.ssh/id_rsa.pub'
alias ls='ls -la'

# Docker
alias dc='docker-compose'
alias drm='docker rm $(docker ps -a -q) -f'
alias dri='docker rmi $(docker images -q) -f'
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'

# Programs
alias code='open /Applications/Visual\ Studio\ Code.app'

# Python
alias py='python'
alias enve='virtualenv env'
alias enva='source env/bin/activate'
alias envd='deactivate'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
