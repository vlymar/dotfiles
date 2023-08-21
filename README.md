# Prereq

Brew must be installed.

# Install

```shell
brew bundle --file .Brewfile

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


# How this repo works

This repo uses GNU Stow for handling dotfile symlinks. After install, `stow` will symlink everything from `base/` into your home dir when you run:

```
stow base
```

## Dirs:

- base: dotfiles I want on all my machines
- personal: dotfiles only intended for my personal machine
- archive: dotfiles I no longer use but want to keep around just in case
- assets: themes and fonts

# Other resources
## Fonts

https://github.com/adobe-fonts/source-code-pro

## Themes

https://github.com/mbadolato/iTerm2-Color-Schemes
https://github.com/junegunn/seoul256.vim
