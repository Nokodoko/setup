#         
#         _              
# _______| |__  _ __ ___ 
#|_  / __| '_ \| '__/ __|
# / /\__ \ | | | | | (__ 
#/___|___/_| |_|_|  \___|
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions/zsh-autosuggestions.zsh 
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
TERM="rxvt-256color"
COLORTERM='rxvt-unicode-256color'
export EDITOR='nvim'
export BROWSER='qutebrowser'
export TERMINAL='kitty'
#export MANPAGER="nvim -c 'set ft=man' -"
export LYNX_CFG='~/.config/lynx/lynx.cfg'
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
#export FZF_DEFAULT_OPTS='--preview "bat -nf --paging always {}"'
#export FZF_DEFAULT_OPTS='--preview "bat --style=numbers --color=always --line-range :500 {}"'
[[ $- != *i* ]] && return
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
source ~/.fzf/key-bindings.zsh

alias bugs='c ~/Videos/bugswriter/'

##pfetch
#export PF_COL1=4
#export P4_COL2=5
#export PF_COL3=5
#neofetch #--chafa ~/Pictures/goCrazy.jpg

alias sudo='sudo '
source /usr/share/fzf/completion.zsh
alias dell='n0ko@Dell'
alias s='scp'
alias sr='scp -r'
alias n='nmap'
alias ter='terraform'
alias dm='c ~/Programs/dwm-6.2/'
alias w='which'
alias ac='arp -a'
alias as='arp-scan'
alias as='arp-scan'
alias gscan='sudo goscan'
alias s!='sudo !!'
alias gr='geo-recon.py'
alias a='amfora'
alias lt='litecli'
alias kc='killall chromium'
alias pup='pup -c'
alias cal='calcurse'
alias top='bpytop'
alias sl='c ~/n0koSuckless/slstatus'
alias vbox='virtualbox'
alias vr='virsh'
alias y='ytfzf -t'
alias chrome='gootl-'

function move(){
    back $@ &
    disown back
} 

function p(){
    kitty +kitten icat $@
}
#
# ____                        _             
#| __ ) _ __ _____      _____(_)_ __   __ _ 
#|  _ \| '__/ _ \ \ /\ / / __| | '_ \ / _` |
#| |_) | | | (_) \ V  V /\__ \ | | | | (_| |
#|____/|_|  \___/ \_/\_/ |___/_|_| |_|\__, |
#                                     |___/ 
alias q='duck'


# _   ____  _                _    
#| |_/ ___|| |__   __ _ _ __| | __
#| __\___ \| '_ \ / _` | '__| |/ /
#| |_ ___) | | | | (_| | |  |   < 
# \__|____/|_| |_|\__,_|_|  |_|\_\
#                                 
alias shk='tshark'

function shky() {
    tshark -Y $@
}



#       __  __             
# _ __ |  \/  | __ _ _ __  
#| '_ \| |\/| |/ _` | '_ \ 
#| | | | |  | | (_| | |_) |
#|_| |_|_|  |_|\__,_| .__/ 
#                   |_|    

function scan() {
n $1 scanme.nmap.org
}

function output() {
    nmap -oN $1 $2
}

function sweep() {
    nmap -sP -oG $1 $2
}

function os() {
    sudo n -O $1
}

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:~/go/src/scripts:~/go/bin:~/proto/prac2/:/usr/local/bin/rofi-surfraw:/usr/lib/surfraw:~/.config/lynx/lynx.cfg:${PATH}:~/Videos/Udemy/shellScripting/shellclass/localusers/
alias path='echo -e ${PATH//:/\\n}'
export GOPATH=~/goProjects/

#           _            _     ____  
#  ___ ___ | | ___  _ __| |   / ___| 
# / __/ _ \| |/ _ \| '__| |   \___ \ 
#| (_| (_) | | (_) | |  | |___ ___) |
# \___\___/|_|\___/|_|  |_____|____/ 
#                                    

alias l='exa'
alias ls='exa'
alias lsd='exa -d'
alias ll='exa -l'
alias la='colorls -a'
#alias ls='colorls --sd'
alias lr='colorls -r'
alias tree='colorls --tree'
alias lgit='colorls --gs'
alias lgt='colorls --gs -t'
set -o vi

#Docker Tab Completion
#mkdir -p ~/.zsh/completion
#curl -L https://raw.githubusercontent.com/docker/machine/v0.16.0/contrib/completion/zsh/_docker-machine > ~/.zsh/completion/_docker-machine
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

#    _    _ _                     
#   / \  | (_) __ _ ___  ___  ___ 
#  / _ \ | | |/ _` / __|/ _ \/ __|
# / ___ \| | | (_| \__ \  __/\__ \
#/_/   \_\_|_|\__,_|___/\___||___/
#
#Paths
alias -s {html,go,css}=nvim
alias see='kitty icat'
alias sx='startx'
alias ddwm='cd ~/Programs/dwm/ && ls'
alias swapped='rm ~/.local/share/nvim/swap//%home%n0ko%.config%nvim%init.vim.swp'
alias swap='rm ~/.local/share/nvim/swap//%home%n0ko%.zsh.swp'
alias vb='nvim ~/.zshrc'
alias e='exit'
alias sb='source ~/.zshrc'
alias dunstrc='nvim ~/.config/dunst/dunstrc'
alias plug='cd ~/.config/nvim/plugged && ls'
alias v='nvim'
alias clock='tty-clock -cs -C 4'
alias god='sudo'
alias lx='v ~/.config/lynx/lynx.cfg'
alias lj='v ~/.config/lynx/jumpsUnix.html'
alias ly='lynx -cfg=/home/n0ko/.config/lynx/lynx.cfg'
alias add='sudo pacman -S'
alias build='pacman -U'
alias Q='cd ..'
alias cls='clear ; sb'
alias neo='neofetch'
alias hg='kitty +kitten hyperlinked_grep'
function ma() {
  /usr/bin/man $* | \
    col -b | \
    nvim -R -c 'set ft=man nomod nolist' -
}
alias xp='xprop'
alias reset='make clean && rm -f config.h && git reset --hard origin/master'
alias making='make && sudo make clean install'
alias made='sudo make clean install'
alias gp='rg'
function c(){
    cd $1 
    ls
}
alias md='mkdir'
alias makeit='makepkg -si'
alias ex='export'
alias evil='airmon-ng start wlp5s0mon'
alias evilt='airmon-ng --test wlp5s0mon'
alias ns='notify-send hello'
alias nsc='notify-send -u critical hello'
alias zip='tar -xf'
alias uzip='tar -xvf'
alias fc='fc-cache -f -v'
alias fig='figlet'
alias mk='mkdir'
alias s='surfraw'
function mkc(){
    mkdir -p $1
    cd $1
}

function mkn(){
    mknod /dev/$1 $2 $3 $4
    cd $1
}

alias mkd='mkdir'
alias delete='rm  - rf'
alias sshConnect='ssh -T -p 443 git@ssh.github.com'
alias sci='ssh-copy-id -i'
alias ar='arandr'
alias n0='c ~/n0koSuckless/n0koBuild/'
alias n1='c ~/n0koSuckless/dmenu-5.0/'
alias tester='ping 192.168.50.1'
alias test='while sleep 3; do ping archlinux.org; done'
alias jump='ssh n0ko@192.168.50.214'
alias cjump='ssh n0ko@192.168.1.157'


#  ____ 
# / ___|
#| |    
#| |___ 
# \____|
#
function cc(){
    gcc $1 -Wall -o $2
    ./$2
}
       


#  ____  ___  
# / ___|/ _ \ 
#| |  _| | | |
#| |_| | |_| |
# \____|\___/ 
#             
function gs(){
    du -a | rg $1(^"test.go") | fzf | xargs -r $EDITOR
}

function go_test() {
  go test $* | sed ''/PASS/s//$(printf "\033[32mPASS\033[0m")/'' | sed ''/SKIP/s//$(printf "\033[34mSKIP\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | GREP_COLOR="01;33" egrep --color=always '\s*[a-zA-Z0-9\-_.]+[:][0-9]+[:]|^'
}

alias got='go_test -v'
alias clib='apropos -r '^std'|nvim -'
alias lib='cd /usr/lib/go/src && ls'
alias gt='gotest -v'
alias gtv='gotest'
function g1(){
  go run $1 | column
}
alias g='go run'
alias doc='go doc' 
alias gm='go run main.go'
alias gg='go get -u'
alias gb='go build'
alias gf='go fmt'
alias gl='go list -m all'
#alias gmi='go mod .init'
alias gmt='go mod tidy'
alias gmv='go mod vendor'
alias rs='cd ~/go/resources'
function pro(){
    protoc -I ${PWD} --go_out=. $1
}

function gmi(){
    go mod init github/Nokodoko/$1
}

# ____             _             
#|  _ \  ___   ___| | _____ _ __ 
#| | | |/ _ \ / __| |/ / _ \ '__|
#| |_| | (_) | (__|   <  __/ |   
#|____/ \___/ \___|_|\_\___|_|   
                                

alias d='docker'
alias dstop='docker stop'
alias dr='docker run -dit'
alias drun='docker run --rm'
alias ds='docker stop'
alias darch='docker run -dit archlinux/base'
alias dp='docker ps'
alias dpa='docker ps -a'
alias dpl='docker ps -l'
alias dnl='docker network ls'
alias di='docker images'
alias dni='docker network inspect'
alias dpull='docker pull'
alias dh='docker history'
alias dt='docker tag'
alias db='docker build -t'
alias drmi='docker rmi'
alias drm='docker rm'
alias dprune='docker image prune'
alias dsysp='docker system prune -a'
alias dlog='docker logs -t'
alias dfollow='docker logs -f'
alias did='docker login'
alias dvol-c='docker volume create'
alias dvol-l='docker volume ls'
alias dvol-r='docker volume rm'
alias dvol-i='docker volume inspect'
alias dvol-p='docker volume prune'
alias ds='dockerscan'
alias dswarm='docker swarm init'
alias swarmjoin='docker swarm join-token'

function dcn() {
        docker network inspect bridge -f '{{ .Containers }}'
} 

function dipa() {
        docker inspect -f '{{ .NetworkSettings.IPAddress }}' $1
} 

function dserv() { # $1=serviceName; $2=portNumber; $3=imageName
        docker service create --name $1 -p $2 $3
        } 

function dic() { # $1= running containerName tw
        docker inspect $1 | gp Mount -A 10
        
        } 

function dmount() { # $1=containerName; $2=volumeName ; $3=containerPath to mount
        docker run -d --name $1 --mount source=$2,destination=$3
        
        } 

function dmountsize() { # $1=containerName; $2=volumeName ; $3=containerPath to mount
        docker run -d --name $1 --mount source=$2,$2-size=$3,destination=$4
        
        } 
function dcurl() {
        curl http://localhost:$1
        } 

function dstart() { # $1 = container sha or tag
        docker restart $1
        } 

#function dremount() {
#        docker run -d --name $1 mount $2 
#        
#}  

function dname() { # $1=name; $2=Image; 
        docker run -dit --name $1 $2 
        } 

function dport() { # $1=name; $2=ports; $3 = Image#
        docker run -dit --name $1 -p $2 $3
        }

function dshell() { # $1=name; $2=image; $3=shell interpreter
        docker run -it --name $1 $2 $3
        } 

function dexec() { # $1=shell interpreter
        dp > ~/running_containers
        local ID=$(awk 'FNR == 2 {print $1}' ~/running_containers) # ID = Container hash
        docker exec -it $ID $1 
        rm ~/running_containers
        } 

function dbuild() { # $1=
        docker build -t n0ko/$1 -f Dockerfile .
        }  

function dpush() {
        docker push n0ko/$1
        
        } 
# ____                                  
#|  _ \ __ _  ___ _ __ ___   __ _ _ __  
#| |_) / _` |/ __| '_ ` _ \ / _` | '_ \ 
#|  __/ (_| | (__| | | | | | (_| | | | |
#|_|   \__,_|\___|_| |_| |_|\__,_|_| |_|
                                       
alias remove='sudo pacman -Rns'
alias update='sudo pacman -Syu'
alias build='sudo pacman -U'
alias orphan='sudo pacman -Qtdq | pacman -Rns -'
alias search='sudo pacman -Q'


# ____            _                 ____  
#/ ___| _   _ ___| |_ ___ _ __ ___ |  _ \ 
#\___ \| | | / __| __/ _ \ '_ ` _ \| | | |
# ___) | |_| \__ \ ||  __/ | | | | | |_| |
#|____/ \__, |___/\__\___|_| |_| |_|____/ 
#       |___/                             

alias order66='sudo systemctl stop'
alias dewit='sudo systemctl enable'
alias dewitnow='sudo systemctl start'
alias journal='journalctl -xe'
alias reload='sudo systemctl daemon-reload'
alias wiservoff='sudo ip link set wlp5s0 down'
alias wiservon='sudo systemctl start netctl'
alias eth='sudo systemctl start dhcpcd'
alias etho='sudo systemctl stop dhcpcd'
alias sys='systemctl'
alias sys_s='systemctl status'
alias sys_start='systemctl start'

function syst(){
    systemctl list-unit-files --type=target
}

alias vag='vagrant'

function vagb(){
    vagrant box add $1
}

function sysl(){
    sudo systemctl list-dependencies multi-user.target
}

funcion sys_r(){
    sudo systemctl reload $1 
}
# ____  _               _             _           
#|  _ \(_)_ __ ___  ___| |_ ___  _ __(_) ___  ___ 
#| | | | | '__/ _ \/ __| __/ _ \| '__| |/ _ \/ __|
#| |_| | | | |  __/ (__| || (_) | |  | |  __/\__ \
#|____/|_|_|  \___|\___|\__\___/|_|  |_|\___||___/
                                                 
alias conf='cd ~/.config; ls'
alias exe='cd /usr/local/bin && ls'
alias down='cd ~/Downloads && ls'
alias resume='cd ~/Downloads/resumes ;ls'
alias prog='cd ~/Programs; ls'
alias vid='cd ~/Videos; ls'
alias pic='cd ~/Pictures; ls'
alias udemy='cd ~/Videos/Udemy; ls'
alias goclass='cd ~/Videos/Udemy/Go/learn-how-to-code/'
alias mit='cd ~/MIT'
alias gosrc='cd ~/go/src'
alias gol='cd ~/go/src/ && ls'
alias gu='cd ~/goUltimate && v main.go'
alias proj='cd ~/project_1/ && ls'
alias serv='cd ~/go/src/service && ls -l' 
alias gtrain='cd ~/gotraining && ls'
alias pprof='go tool pprof'
alias xre='v ~/.Xresources'
alias change='xrdb ~/.Xresources'
alias vimrc='v ~/.config/nvim/init.vim'
alias sv='sudo nvim'
alias music='cd ~/music; ls'
alias ws='wiki-search'
alias alg='cd ~/algorithmswithgo.com/module01 && ls'
alias play='cd ~/goPlay && ls'
alias sort='cd ~/sort && ls'
alias arch='cd /usr/share/doc/arch-wiki/html/en/ && ls'
function rollback(){sudo pacman -U $1}
function rev(){
    c /var/cache/pacman/pkg/ 
}

alias doc='c ~/Documents'

#  ____ _ _   
# / ___(_) |_ 
#| |  _| | __|
#| |_| | | |_ 
# \____|_|\__|
#             
alias lg="lazygit"
alias gref='git reflog'
alias gshow='git show'
alias gtag='git tag'
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gc='git clone'
alias gi='git init'
alias gcom='git commit -m'
alias gcomx='git commit -am'
alias gd='git difftool'
alias gdiff='git diff'
alias gdh='git difftool HEAD'
alias gstat='git status'
alias gstatf='git status | fzf'
alias gadd='git add'
alias ga='git add --all'
alias gl='git log'
alias gpush='git push'
alias gcout='git checkout'
alias gcheck='git checkout -b'
alias gbranch='git branch'
alias iv='sxiv' 
function gremote(){
    git remote add origin git@github.com:Nokodoko/$1.git
}


# ____                                          
#|  _ \ _ __ ___   __ _ _ __ __ _ _ __ ___  ___ 
#| |_) | '__/ _ \ / _` | '__/ _` | '_ ` _ \/ __|
#|  __/| | | (_) | (_| | | | (_| | | | | | \__ \
#|_|   |_|  \___/ \__, |_|  \__,_|_| |_| |_|___/
#                 |___/                         
function m(){
    mpv $1 & disown mpv 
}


function key(){
    screenkey $1 & disown screenkey 
}

function now(){
    c Programs/android-messages-desktop/
    npm start & disown npm
}

alias sx='startx'
#function sx(){
#    cd ~/Pictures && fzf | xargs sxiv
#}
alias qute='qutebrowser'

export FZF_COMPLETION_TRIGGER='**'

# Options to fzf command
export FZF_COMPLETION_OPTS='+c -x'
export FZF_OPEN_COMMAND=''
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND='fd --type f'

_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    export|unset) fzf "$@" --preview "eval 'echo \$'{}" ;;
    $ssh)          fzf "$@" --preview 'dig {}' ;;
    *)            fzf "$@" ;;
  esac
}

function lsf(){
    fzf | xargs mplayer
}

alias yt='youtube-dl'
alias yv='youtube-viewer'
function ud(){
    python ~/Programs/udemy-dl/udemy-dl.py $1 -k ~/Programs/udemy-dl/cookies.txt
}


function ud2(){
    python ~/Programs/udemy-dl/udemy-dl.py $1 -k ~/Programs/udemy-dl/cookie2.txt
}

alias mail='neomutt'
alias mp='mplayer'
function z(){
    zathura $1 &
    disown zathura
    exit
}

alias mu='mupdf'
alias f='fzf'
#alias st='slack-term'



#  ____             __ _         _____ _ _           
# / ___|___  _ __  / _(_) __ _  |  ___(_) | ___  ___ 
#| |   / _ \| '_ \| |_| |/ _` | | |_  | | |/ _ \/ __|
#| |__| (_) | | | |  _| | (_| | |  _| | | |  __/\__ \
# \____\___/|_| |_|_| |_|\__, | |_|   |_|_|\___||___/
#                        |___/                       

alias pi='v ~/.config/.picom.conf'
alias xds='xdg-settings'
alias xo='xdg-open'
alias xm='xdg-mime'
alias xmq='xdg-mime query'
alias xmd='xdg-mime default'

# _   _      _                      _    _             
#| \ | | ___| |___      _____  _ __| | _(_)_ __   __ _ 
#|  \| |/ _ \ __\ \ /\ / / _ \| '__| |/ / | '_ \ / _` |
#| |\  |  __/ |_ \ V  V / (_) | |  |   <| | | | | (_| |
#|_| \_|\___|\__| \_/\_/ \___/|_|  |_|\_\_|_| |_|\__, |
#                                                |___/ 
alias wifi='sudo netctl start'
alias dad='sudo netctl start Dad'
alias byedad='sudo netctl stop Dad'
alias here='sudo netctl start wlp5x0-n0koSpeed'
alias here2='sudo netctl start homie'
alias nothere='sudo netctl stop wlp5x0-n0koSpeed'
alias nothere2='sudo netctl stop homie'
alias there='sudo netctl start mobileC'
alias northere='sudo netctl stop mobileC'
alias why='sudo wifi-menu'
alias air='aircrack-ng'
alias blue='bluetoothctl'


# ____  _           _                 
#|  _ \(_)___ _ __ | | __ _ _   _ ___ 
#| | | | / __| '_ \| |/ _` | | | / __|
#| |_| | \__ \ |_) | | (_| | |_| \__ \
#|____/|_|___/ .__/|_|\__,_|\__, |___/
#            |_|            |___/     

alias x1='xrandr --output DP-1 --mode 3840x2160 --output eDP-1 --off'
alias xt='xrandr --output DP-1 --mode 1920x1080 --output eDP-1 --off'
alias x2kh='xrandr --output HDMI-1 --mode 1920x1080 --output eDP-1 --off'
alias x2khr='xrandr --output HDMI-1 --mode 1920x1080 --rotate right --output eDP-1 --off'
alias x3='xrandr --auto --output DP-1 --mode 1920x1080 --above eDP-1' 
alias xtop='xrandr --auto --output HDMI-1 --mode 1920x1080 --above eDP-1' 
alias xtopr='xrandr --auto --output HDMI-1 --mode 1920x1080 --rotate right --above eDP-1'
alias xtoprl='xrandr --auto --output HDMI-1 --mode 1920x1080 --rotate right --left-of eDP-1'
alias xon='xrandr --output eDP-1 --mode 1920x1080'
alias xoff='xrandr --output eDP-1 --mode 1920x1080 --output DP-1 --off --output HDMI-1 --off'
alias x4khr='xrandr --output HDMI-1 --mode 3840x2160 --rotate right --output eDP-1 --off'
alias x4khl='xrandr --output HDMI-1 --mode 3840x2160 --rotate left --output eDP-1 --off'
alias x4kh='xrandr --output HDMI-1 --mode 3840x2160 --output eDP-1 --off'
alias x4kd='xrandr --output DP-1 --mode 3840x2160 --output eDP-1 --off'
alias xd='xrandr --output HDMI-1 --mode 3840x2160 --output eDP-1 --off'
alias xb='xrandr --output HDMI-1 --mode 3840x1080 --output eDP-1 --off'
alias xbt='xrandr --output HDMI-1 --mode 3840x1080 --above eDP-1' 
alias xbd='xrandr --output DP-1 --mode 3840x1080 --output eDP-1 --off'
alias xb2='xrandr --output HDMI-1 --mode 3840x2160 --output eDP-1 --off'
alias x2='xrandr --output HDMI-1 --mode 1920x1080 --output eDP-1 --off'
alias x3='xrandr --output HDMI-1 --mode 3840x1080 --output DP-1 --mode 1920x1080 --left-of HDMI-1 --output eDP-1 --off'
alias x3r='xrandr --output HDMI-1 --mode 3840x1080 --output DP-1 --rotate right --left-of HDMI-1 --output eDP-1 --off'
alias x3f='xrandr --output HDMI-1 --mode 3840x1080 --output DP-1 --left-of HDMI-1 --output eDP-1 --off'
alias xbt='xrandr --output HDMI-1 --mode 3840x1080 --above eDP-1' 
alias xmon='xrandr --listmonitors'

# _____                 _   _                 
#|  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
#| |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
#|  _|| |_| | | | | (__| |_| | (_) | | | \__ \
#|_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/

function chx(){
    sudo chmod +x $1 && sudo cp $1 /usr/local/bin/
}

function get-source() {
    asp export $1 && \
    pushd $1 && \
    makepkg -do --skippgpcheck && \
    pushd src
}

alias ncu='npm-check-updates'
function kakashi() {
        meson build
        cd build
        ninja 
        sudo ninja install
} 

bindkey '^ ' forward-word
