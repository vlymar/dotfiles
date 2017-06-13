# Prompt
# %~ path (subbing in ~)
# %@ time of day (12:00 hour mode
# %W mm/dd/yy (%D yy-mm-dd)
# %? return code of previously executed cmd
# temp, overriding adam2 prompt to add time
#   eventually make you're own
export RPROMPT='%@'

autoload -Uz compinit promptinit

compinit    # completion
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

export FZF_DEFAULT_COMMAND='ag -g ""'

export HOMEBREW_NO_ANALYTICS=1

#export PGDATA="/usr/local/var/postgres93"

## NeoVim Aliases (24bit color)
#alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
#alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim -w ~/sout.txt'

# alias vim='nvim'

## Git Aliases
alias glol="git log --pretty=oneline"

## Tmux Aliases
alias ta="tmux attach-session -t"
alias tls="tmux list-sessions"

# Rails Aliases
alias rc="bin/rails console"
alias ss="script/server"
alias pss="RAILS_ENV=profile script/server"
alias dbconsole="bundle exec rails dbconsole"
alias resetdb="bundle exec rake db:reset"

# c66 aliases
alias cxlist="cx servers list -s \"screendoor-v2-aws\" -e \"production\""

# CMS SSH Aliases
alias cms_imp_master="ssh -i ~/.ssh/geoapi-screendoor-impl-app-1.pem ec2-user@cms_imp_master"
alias cms_imp_follower="ssh -i ~/.ssh/geoapi-screendoor-impl-app-2.pem ec2-user@cms_imp_follower"

alias cms_master="ssh -i ~/.ssh/geoapi-screendoor-prod-app-1.pem ec2-user@cms_prod_master"
alias cms_follower="ssh -i ~/.ssh/geoapi-screendoor-prod-app-2.pem ec2-user@cms_prod_follower"

alias space="emacs & disown"

# fuzzy multi-select modified file
gfmod() {
  git ls-files -m | fzf -m
}

# stage files multi-selected modified files
gfadd() {
  git add $(gfmod)
}

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#eval "$(docker-machine env default)"
#
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# # this shit is slow
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
