#
# Copy to your home and add following line to .bashrc: 
# . ~/.bash_aliases
# Alterntively just copy the content
#

#General
alias sourcebashrc='source ~/.bashrc'
alias ..='cd ..'
alias ...='cd ../..'
alias profile='view ~/.profile'
alias editprofile='vim ~/.profile'
alias bashrc='view ~/.bashrc'
alias editbashrc='view ~/.bashrc'

#Vim
alias vimrc='view ~/.vimrc'
alias editvimrc='vim ~/.vimrc'

#Docker
alias duplog='docker-compose up -d && docker-compose logs -f'
alias ddown="docker-compose down -v"
alias dclean="docker container prune && docker volume prune && docker network prune && docker image prune"
alias docker_rmi_dangling='docker rmi $(docker images -f "dangling=true" -q)'

#Gradle
alias gradlew='./gradlew'
