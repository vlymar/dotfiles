# Install

Option A (if Brewfile exists)
```shell
brew tap Homebrew/bundle
brew bundle --global
```

Option B (if Brewfile doesn't exist)
```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
chsh -s $(which zsh) # using system zsh because its currently same version as brew zsh

brew install stow
brew install tmux
brew install ag
brew install go
brew install node
brew install watchman # react native docs recommend this

brew tap d12frosted/emacs-plus
brew install emacs-plus
brew linkapps emacs-plus

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# Change shell
`chsh -s /bin/zsh`

# Stow
This repo uses GNU Stow for handling dotfile symlinks.

`stow zsh`

# Fonts
https://github.com/adobe-fonts/source-code-pro

# Themes
https://github.com/mbadolato/iTerm2-Color-Schemes
https://github.com/junegunn/seoul256.vim
