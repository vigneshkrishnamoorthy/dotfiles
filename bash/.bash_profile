#
# ~/.bash_profile
#

eval `keychain --eval --agents ssh id_rsa`

[[ -f ~/.bashrc ]] && . ~/.bashrc
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
[[ -z $DISPLAY && $XDG_VTNR -eq 1  ]] && exec sway
