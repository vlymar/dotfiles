# add ~/bin to path
export PATH="$HOME/bin:$PATH"

# GO
# export GOPATH="$HOME/src/go"
# export PATH="$(go env GOPATH)/bin:$PATH"

# Ruby CTags
alias ripper_gem_reindex="gem ripper_tags --reindex" 
alias ripper_reindex="ripper-tags -R"

export BOXEN_SOCKET_DIR="/tmp"
export BOXEN_REDIS_URL="redis://127.0.0.1:6379/"
#export PATH="/Applications/Tunnelblick.app/Contents/Resources/openvpn/openvpn-2.3.14-openssl-1.0.2j/:$PATH"

export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha
