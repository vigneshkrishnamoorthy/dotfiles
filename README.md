# Dotfiles

Dotfiles are the basic necessity of life. This folder contains all my dotfiles.

- nvimrc: configuration file for neovim
- Rprofile: configuration file for R

## Neovim

Since Neovim (v0.1.0), the configuration file's location has been changed. However, the best method to handle any version would be to symlink it rather than copy pasting it. Clone the repo before handling any of the commands.

### Version 0.1.0 and above 

```
ln -s PATH_TO_FILE/nvimrc ~/.config/nvim/init.vim
```

### Version 0.1.0 and below

```
ln -s PATH_TO_FILE/nvimrc ~/.nvimrc
```
or
```
ln -s PATH_TO_FILE/nvimrc ~/.nvim/nvimrc
```
## Rprofile

The Rprofile is a personal configuration file for a R-workspace. Assuming the repo is cloned, directly symlink to the Rprofile.

```
ln -s PATH_TO_FILE/Rprofile ~/.Rprofile
```

# Comments

If you feel that the document is not commented well enough, feel free to contact me for more information.
