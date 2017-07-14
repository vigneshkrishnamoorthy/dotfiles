#
# ~/.bash_profile
#

eval `keychain --eval --agents ssh id_rsa`

[[ -f ~/.bashrc ]] && . ~/.bashrc
