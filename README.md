# Dotfiles

The list of configuration files contained in the repo is here. Symlink it for painlessness.

- nvimrc: configuration file for neovim
- Rprofile: configuration file for R
- i3_config: configuration file for i3 window manager
- xres: resources file for URxvt terminal emulator

## i3 Setup

- Check for `~/.config/i3/config`
- Delete the file
- Symlink the file in the folder with the complete path to `~/.config/i3/config`
- Reset i3 with mod+shift+R

## Neovim

- Create folder `~/.config/nvim/`
    - create subfolder `~/.config/nvim/bundle`
- Symlink the init.vim to the main nvim folder
- Git clone the vundle git to the bundle folder
    `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
- Run VundleInstall on neovim
- Switch to init.vim and run `so %`

## Xresources

- Create a symlink from the xresources file to `~/.Xresources`
- Restart the x-server
`xrdb ~/.Xresources`
