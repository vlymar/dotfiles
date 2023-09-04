# Prereq

Brew must be installed.

# Install

```shell
brew bundle install --file Brewfile --no-lock

# make dir if it doesn't already exist
mkdir -p ~/.config
```

# How this repo works

This repo uses GNU Stow for handling dotfile symlinks. Run these commands to set up symlinks.

```shell
stow base

# separate command because I don't want this repo to own my whole ~/.config dir (for now at least).
# this command just symlinks contents of config/ into an existing ~/.config dir.
stow -S config -t ~/.config
```

## Dirs:

- base: dotfiles I want on all my machines
- personal: dotfiles only intended for my personal machine (`stow personal`)
- archive: dotfiles I no longer use but want to keep around just in case
- assets: themes and fonts

# Other resources
## Fonts

https://github.com/adobe-fonts/source-code-pro

## Themes

https://github.com/mbadolato/iTerm2-Color-Schemes
https://github.com/junegunn/seoul256.vim
