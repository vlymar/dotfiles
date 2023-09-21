if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /opt/homebrew/opt/asdf/libexec/asdf.fish

set HOMEBREW_NO_INSECURE_REDIRECT 1
set HOMEBREW_CASK_OPTS --require-sha
set HOMEBREW_NO_ANALYTICS 1

# recommended by https://github.com/rbenv/ruby-build/wiki#suggested-build-environment
set RUBY_CONFIGURE_OPTS "--with-openssl-dir=$(brew --prefix openssl@3)"

# recommended by `brew install ffi`, ffi is needed for github-pages ruby gem
set LDFLAGS "-L/opt/homebrew/opt/libffi/lib"
set CPPFLAGS "-I/opt/homebrew/opt/libffi/include"

# tide
set --global tide_right_prompt_items status cmd_duration context jobs direnv virtual_env rustc pulumi chruby go gcloud kubectl toolbox terraform aws elixir time

set --global tide_left_prompt_items pwd git newline character

alias vim nvim
