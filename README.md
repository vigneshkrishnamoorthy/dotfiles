# Dotfiles

The list of configuration files contained in the repo is here. Use gnu-stow directly to avoid all sort of pains from now on. Here are a few additional packages that have to be installed to make this work:

- `wmutils`: window manipulation for KeepassX system.
- `xdotool`: window manipulation for the jrnl system in place.

All of the folders are now linked using gnu/stow. Install stow from the repository and use `stow /foldername/` to make the required symlinks.

## Additional Notes

- For mpd, create a copy at /etc/mpd.conf as mpd looks at this configuration file on boot up.
- `acpi` needs to be installed for showing the battery in the bar.

### Neovim notes

- Git clone the vundle git-repo to the bundle folder:
    `git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim`
- Run `VundleInstall` in neovim before sourcing the `init.vim` file.
