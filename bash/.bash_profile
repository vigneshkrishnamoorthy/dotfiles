#
# ~/.bash_profile
#

eval `keychain --eval --quiet --agents ssh id_rsa`

[[ -f ~/.bashrc ]] && . ~/.bashrc
