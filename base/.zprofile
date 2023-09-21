# .zprofile is read at login
# put things that should only be set once here

. /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

## this section supports jupyter and fastbook
. /opt/homebrew/opt/asdf/libexec/asdf.sh

. /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
##


export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_NO_ANALYTICS=1

# Added by Toolbox App
export PATH="$PATH:/Users/victor/Library/Application Support/JetBrains/Toolbox/scripts"

# recommended by https://github.com/rbenv/ruby-build/wiki#suggested-build-environment
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"

# recommended by `brew install ffi`, ffi is needed for github-pages ruby gem
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
