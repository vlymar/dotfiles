
autoload -Uz compinit promptinit

compinit    # completion

# Prompt
# %~ path (subbing in ~)
# %@ time of day (12:00 hour mode
# %W mm/dd/yy (%D yy-mm-dd)
# %? return code of previously executed cmd
# temp, overriding adam2 prompt to add time
#   eventually make you're own
# export RPROMPT='$VIRTUAL_ENV %@'
promptinit  # custom prompt
prompt adam2 8bit





bindkey -e  # emacs mode (note: -v is vim mode)

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

export HOMEBREW_NO_ANALYTICS=1

## Git Aliases
alias glol="git log --pretty=oneline"

## Tmux Aliases
alias ta="tmux attach-session -t"
alias tls="tmux list-sessions"

# Rails Aliases
alias rc="bin/rails console"
alias dbconsole="bundle exec rails dbconsole"
alias resetdb="bundle exec rake db:reset"

alias space="emacs & disown"

# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(rbenv init -)"

[[ -s "$HOME/.work_zshrc" ]] && \. "$HOME/.work_zshrc"
