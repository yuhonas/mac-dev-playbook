# https://minsw.github.io/fzf-color-picker/
export FZF_DEFAULT_OPTS="--reverse
--color=fg:#d0d0d0,hl:#5f87af 
--color=fg+:#d0d0d0,hl+:#5fd7ff 
--color=info:#afaf87,prompt:#00d6a4,pointer:#af5fff 
--color=marker:#87ff00,spinner:#af5fff,header:#87afaf
--preview='less -10 {+} 2>/dev/null'"

# git aliases

#alias gst='git status'
#alias gj='git jira'
#alias gd='git diff'
#alias gdc='git diff --cached'

# use vim as the default editor

export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm-256color

# set our prompt

#autoload -Uz promptinit
#promptinit
#prompt pure

# heroku aliases

alias h="heroku"
alias hl="heroku logs -t"
alias hc="heroku run console"
alias hr="heroku run"
alias hp="heroku ps"
alias hnr="heroku addons:open newrelic"
alias be="bundle exec"

# ls aliases

eval $(gdircolors ~/.dircolors/dircolors.256dark)

bindkey -s "^[l" "exa -al^J" # shortcut to listing a directory


# lesspipe

export LESSOPEN="|/usr/local/bin/lesspipe.sh %s"
LESS_ADVANCED_PREPROCESSOR=1

# cd-gitroot alias
alias cdu='cd-gitroot'

# get the weather

alias weather="curl wttr.in/Melbourne"
