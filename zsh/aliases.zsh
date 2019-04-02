# vimrc editing
alias ve='vim ~/.vimrc'
alias vi='vim'

# zsh profile editing
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'

alias cp='nocorrect cp'
alias mv='nocorrect mv'
alias rm='nocorrect rm'
alias mkdir='nocorrect mkdir'

# /bin/ls aliases
alias ls='ls -G'
alias la='ls -aG'
alias ll='ls -lahG'
alias lsg='ll | grep'
alias lh='ls -alt | head'

# Other Common Commands
alias df='df -h'
alias du='du -h -d 2'
alias tf='tail -f'
alias cl='clear'
alias cls='clear;ls'
alias mmv="noglob zmv -W"

# Netstat
alias ns='sudo netstat -plant | grep LISTEN'

# PS Aliases
alias ps="/bin/ps auxf"
alias psg="/bin/ps aux | grep "
alias p='ps -fu $USER'
alias j='jobs -l'
alias h='history'

# Git Aliases
alias git='noglob git'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias ga='git add .'
alias gall='git add -A'
alias gc='git commit'
alias gca='git commit -a'
alias gcv='git commit -v -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb'
alias grso='git remote show origin'
alias grsu='git remote show upstream'

# Docker Aliases
alias dps='docker ps'
alias dpsa='docker ps --all'
alias di='docker image'
alias dils='docker image ls'

# Python development environment
# TODO - break these into a zsh function
alias pythondevup='docker run --name=pydevdocker -d -p 5000:5000 -p 8888:8888 -p 8000:8000 -v ~/code/python/:/notebooks/workspace tensorflow/tensorflow:latest && docker exec -it pydevdocker bash'
alias pythondevdown='docker stop pydevdocker'
alias pythondevrm='docker rm pydevdocker'

# Purge ~/code/**/node_modules
alias npm-purge='find ./ -name "node_modules" -type d -prune -exec rm -rf "{}" +'
alias nid='npm install && npm run dev'
alias lbs='lerna bootstrap'

# Home/Away Keyboard settings
alias kbdas='setxkbmap -option altwin:swap_alt_win'
alias kbreset='setxkbmap -option'
# alias docked='xrandr --output VIRTUAL1 --off --output eDP1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP1 --off --output DP2-1 --primary --mode 1920x1080 --pos 3840x0 --rotate normal --output DP2-2 --off --output DP2-3 --off --output HDMI2 --off --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP2 --off'
alias docked='xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP1 --off --output DP2-1 --mode 1920x1080 --pos 3840x0 --rotate normal --output DP2-2 --mode 1920x1080 --pos 0x0 --rotate normal --output DP2-3 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off'

# Lenovo Trackpoint settings
alias trackpoint="subl /sys/devices/platform/i8042/serio1/serio2"

# PBCopy Helper
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Copy RSA Public Key to clipboard
alias cprsa="pbcopy < ~/.ssh/id_rsa.pub"

# System Aliases
alias version='lsb_release -a'

# python -m SimpleHTTPServer 8000
alias serve='echo "Serving $(pwd) at \n\n\t http://localhost:3003 \n" && /usr/bin/python -m SimpleHTTPServer 3003'

# CD aliases
alias rpi='cd ~/MEGA/rpi/Semesters/2018_Fall'
alias opsys='cd ~/MEGA/rpi/Semesters/2018_Spring/OPSYS'
alias proglang='cd ~/MEGA/rpi/Semesters/2018_Fall/PROGLANG'
alias psoft='cd ~/MEGA/rpi/Semesters/2018_Fall/PSOFT'
alias gsas='cd ~/MEGA/rpi/Semesters/2018_Fall/GSAS'
alias ontologies='cd ~/MEGA/rpi/Semesters/2018_Fall/ONTOLOGIES'
alias cdc="cd ~/code"
alias cdd="cd ~/Downloads"
alias sc="cd ~/code/scratch"
alias statusupdates="code ~/code/rcos-status-updates"
alias cdt="cd ~/code/codotype/codotype/packages/@codotype"
alias subcodo="subl ~/code/codotype/codotype/packages/@codotype"

# Logout helper
alias lo='logout'

# GVFS (Linux Mint file manager)
alias fe='gvfs-open ./'

# Hub
# eval "$(hub alias -s)"

# Simplify3D
alias simplify3d='sudo /opt/Simplify3D-4.0.1/LaunchScript.sh'

# alias brewu="brew update && brew upgrade --all && brew doctor && brew cleanup"
alias latexmk='latexmk -pdf -pvc'
alias flushdns='sudo killall -HUP mDNSResponder'

# Include custom aliases
[[ -f ~/.aliases ]] && source ~/.aliases
