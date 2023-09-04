# .zshrc is sourced for interactive shells
# put things related to interactive shells here (prompt, history, etc)

# https://github.com/sindresorhus/pure
# installed via brew
autoload -U promptinit; promptinit
prompt pure

autoload -Uz compinit 
compinit    # completion

alias vim=nvim

# activate asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# bindkey -e  # emacs mode (note: -v is vim mode)

# History
if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

# History (copped from oh-my-zsh) # TODO: prune
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

# Git Aliases
alias glol="git log --pretty=oneline"
#
### Tmux Aliases
#alias ta="tmux attach-session -t"
#alias tls="tmux list-sessions"

# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s "$HOME/.work_zshrc" ]] && \. "$HOME/.work_zshrc"

