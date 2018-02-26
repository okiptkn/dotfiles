########
# Main #
########

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/okiptkn/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit

[[ $- != *i* ]] && return

# user scripts
    if [ -d "$HOME/.scripts" ] ; then
        export PATH="$HOME/.scripts:$PATH"
    fi

# set terminal title
DISABLE_AUTO_TITLE="true"
 #set last used command as title
function preexec {
    print -Pn "\e]0;$1\a"
}

# End of lines added by compinstall
