# Dotfiles

The list of configuration files contained in the repo is here. Symlink it for painlessness.

- nvimrc: configuration file for neovim.
- Rprofile: configuration file for R.
- i3: configuration file for i3wm and i3bar.
- Xresources: resources file for URxvt terminal emulator.
- bashprofile: bash profile to load stuff on login.
- music-player-daemon: mpd config.
- ncmpcpp: configuration file for the ncmpcpp client.
- redshift: redshift location and settings.
- wallpapers: simple wallpapers.

## i3 Setup

- Check for `~/.config/i3/config`
- Delete the file
- Symlink the file in the folder with the complete path to `~/.config/i3/config`
- remember to install **acpi** for showing battery with i3bar.
    - this can be overridden by editing the script for i3bar.
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

## music-player-daemon

This is a slightly complicated system.
- create the files and folders described in the conf file.
- symbolic link the *mpd.conf* to the location.
- also create copy at `/etc/mpd.conf`
    - this is required since on boot-up, MPD idiotically looks it up here
- run `mpd ~/.config/mpd/mpd.conf`
- Now run the client of choice
    - to rescan the system:
        - kill MPD
        - delete `~/.config/mpd/database`
        - rerun mpd
        - run the client of choice

## ncmpcpp

- create folder called `.ncmpccp` at home.
- symbolic link the config file to `~/.ncmpcpp/config`
- symbolic link the script to the config folder with the same name.
- run the client as usual.

## Bash profile

- Delete the bash profile at home/$user.
- symbolic link the configuration to `~/.bash_profile`
- symbolic link the bashrc to `~/.bashrc`
