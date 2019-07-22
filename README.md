# Dotfiles

The list of configuration files contained in the repo is here. Use gnu-stow directly to avoid all sort of pains from now on. Here are a few additional packages that have to be installed to make this work:

- i3-gaps
- i3-blocks
- gnu/stow
- keychain
- rxvt-unicode
- urxvt-perls - for mouseless text selection and navigation in the terminal
- acpi - for battery information in the bar
- xbindkeys - for adding keyboard controls on Spotify Linux Client


All of the folders are now linked using gnu/stow. Install stow from the repository and use `stow /foldername/` to make the required symlinks.

## Additional Notes

- For mpd, create a copy at /etc/mpd.conf as mpd looks at this configuration file on boot up.
- `acpi` needs to be installed for showing the battery in the bar.
- `urxvt-perls` for the mouse-less select to work best.

### Neovim notes

- Git clone the vundle git-repo to the bundle folder:
    `git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim`
- Run `VundleInstall` in neovim before sourcing the `init.vim` file.
