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
alias working="cd ~/.config/dwm"

## write some function for alias ##

# switch background
function sbg() {
    if [ "$1" = "-j" ]; then
        feh --bg-fill /home/okiptkn/.backgrounds/.jpg/$2.jpg
    elif [ "$1" = "-p" ]; then
        feh --bg-fill /home/okiptkn/.backgrounds/$2.png
    elif [ "$1" = "-je" ]; then
        feh --bg-fill /home/okiptkn/.backgrounds/.jpeg/$2.jpeg
    else
        echo "$1 and $2 is not a command"
    fi
}

# wifi
function connect() {
    if [ "$1" = "potemkin" ]; then
        su -c 'wpa_supplicant -B -i yourwifiinterface -c <(wpa_passphrase yourssid yourpass)'
    else
        echo "$1 is an unknown ssid"
    fi
}

# gitrepo
alias igit='git init'
alias ragit='git remote add origin' #add remote repo
alias agit='git add'                #add files
alias rgit='git rm -r'              #remove files
alias cgit='git commit -m'          #commit changes
alias pgit='git push -u origin master'

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

function ydl() {
    youtube-dl -f $1 $2 --external-downloader aria2c
}

# dumb shits
# meirl
function meirl() {
    echo "_(:3_I <)_"
}
