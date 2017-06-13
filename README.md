# Install
```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
chsh -s $(which zsh) # using system zsh because its currently same version as brew zsh

brew install stow
brew install tmux

brew tap d12frosted/emacs-plus
brew install emacs-plus
brew linkapps emacs-plus


```

# Stow
This repo uses GNU Stow for handling dotfile symlinks.

`stow zsh`

# Fonts
https://github.com/adobe-fonts/source-code-pro

# Themes
https://github.com/mbadolato/iTerm2-Color-Schemes
https://github.com/junegunn/seoul256.vim
