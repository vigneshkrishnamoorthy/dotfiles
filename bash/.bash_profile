#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
[[ -z $DISPLAY && $XDG_VTNR -eq 1  ]] && exec startx
