##########
# prompt #
##########

# 
# author : xero <x@xero.nu>
# link   : github.com/xero/dotfiles/tree/master/zsh 
# updated ()2018/okiptkn

# set some variables
git_parse_dirty="[+]"
#git_parse_ahead="↑"
git_parse_ahead="▲"
git_parse_behind="↓"
#git_parse_behind="▼"
git_parse_diverged="⥮"
root_clr="%F{red}"
user_clr="%F{blue}"
normal_clr="%F{white}"
prompt_used="lastdir"


# define function
setopt PROMPT_SUBST
autoload -Uz colors && colors

# set user colors
if [[ "$EUID" -ne "0" ]]
then  # if user is not root
	cur_user="${user_clr}"
else # root!
	cur_user="${root_clr}"
fi

# set last directory as prompt
ldir() {
    echo ${PWD##*/}
}

# set color indicators
succ='%F{210}'
fail='%F{95}'

# git prompt
git_prompt() {
  checkdir=$(git rev-parse --is-inside-work-tree 2>/dev/null)
  if [ ! "$checkdir" ]; then
      return
  fi
  ref=$(git name-rev --name-only HEAD | sed 's!remotes/!!' 2> /dev/null)
  dirty="" && [[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]] && dirty=$git_parse_dirty
  stat=$(git status | sed -n 2p)
  case "$stat" in
    *ahead*)
      stat=$git_parse_ahead
    ;;
    *behind*)
      stat=$git_parse_behind
    ;;
    *diverged*)
      stat=$git_parse_diverged
    ;;
    *)
      stat=""
    ;;
  esac
  case "$prompt_used" in
    lastdir)
      echo "${cur_user} %~ at ${normal_clr}"${ref}${dirty}${stat}"${cur_user}"
    ;;
    *)
    echo "${cur_user}─[${normal_clr}"${ref}${dirty}${stat}"${cur_user}]"
    ;;
  esac
}
case "$prompt_used" in
# set last dir of $PWD as prompt
lastdir)
PROMPT='%(?.${succ}.${fail}) $(ldir) ❯ %f'
RPROMPT='$(git_prompt)'
;;
# or use default
*)
PROMPT='${cur_user}[${normal_clr}%~${cur_user}] | $(git_prompt) $ %f'
RPROMPT='%*'
;;
esac
