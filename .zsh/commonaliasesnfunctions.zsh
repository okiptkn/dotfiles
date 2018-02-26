##############################
# common aliases & functions #
##############################
# auth : Restu Purnomo (c)2018/okiptkn

# common aliases
alias vi='vim'
alias svi='sudo vim'
alias spac='sudo pacman'
alias mv='mv -iv'               # interactive and verbose mv
alias rm='rm -iv'               # interactive and verbose rm
alias weather='curl -s wttr.in/purwoasri | head -7'       # print weather
alias weatherforecast='curl -s wttr.in/purwoasri | head -37 | tail -30'
alias ls='ls --color=always'
alias grep='grep --color=always'
alias ad='aria2c -x 16 -s 8'
alias cd2018="cd ~/port/What\'\s\ New/©\ 2018"
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"


## write some function for alias ##

# switch background
function sbg() {
    if [ "$1" = "-j" ]; then
        feh --bg-fill /home/okiptkn/.backgrounds/.jpg/$2.jpg
    elif [ "$1" = "-p" ]; then
        feh --bg-fill /home/okiptkn/.backgrounds/$2.png
    else
        echo "$1 and $2 is not a command"
    fi
}

# wifi - in case you don't use any gui tools
function connect() {
    if [ "$1" = "ssid" ]; then
        su -c 'wpa_supplicant -B -i wlp3s0b1 -c <(wpa_passphrase ssid pass)'
    else
        echo "$1 is an unknown ssid"
    fi
}

# gitrepo
alias ginit='git init'
alias gitra='git remote add origin' #add remote repo
alias gita='git add'                #add files
alias gitr='git rm -r'              #remove files
alias gitc='git commit -m'          #commit changes
alias gitp='git push -u origin master'

# meirl
function meirl() {
    echo "_(:3_I <)_"
}

# touchpad
function pad {
    if [ "$1" = "on" ]; then
        synclient TouchpadOff=0
    elif [ "$1" = "off" ]; then
        synclient TouchpadOff=1
    else
        echo "'$1' is not a command"
    fi
}

# youtube-dl
alias fetch='youtube-dl -F'
    # pipe youtube-dl to aria2
function ydl() {
    youtube-dl -f $1 $2 --external-downloader aria2c
}
