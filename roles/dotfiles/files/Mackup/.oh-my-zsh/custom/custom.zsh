# fzf default options
# https://github.com/junegunn/fzf
# https://minsw.github.io/fzf-color-picker/
export FZF_DEFAULT_OPTS="--reverse
--color=fg:#d0d0d0,hl:#5f87af 
--color=fg+:#d0d0d0,hl+:#5fd7ff 
--color=info:#afaf87,prompt:#00d6a4,pointer:#af5fff 
--color=marker:#87ff00,spinner:#af5fff,header:#87afaf
--preview='less -10 {+} 2>/dev/null'"

# use vim as the default editor
export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm-256color

# heroku aliases
alias h="heroku"
alias hl="heroku logs -t"
alias hc="heroku run console"
alias hr="heroku run"
alias hp="heroku ps"
alias hnr="heroku addons:open newrelic"
alias be="bundle exec"

# color setup for ls
# http://man7.org/linux/man-pages/man1/dircolors.1.html        
eval $(gdircolors ~/.dircolors/dircolors.256dark)

# custom keybindings for fast directory exploration
bindkey -s "^[l" "exa -al^J" # alt-l shortcut to listing a directory
bindkey -s "^[r" "ranger^J"  # alt-r shortcut to file explorer

# less input pre-processing through lesspipe
# https://manpages.debian.org/jessie/less/lesspipe.1.en.html
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s"
LESS_ADVANCED_PREPROCESSOR=1

# cd-gitroot alias
# https://github.com/mollifier/cd-gitroot
alias cdu='cd-gitroot'

# get the weather
alias weather="curl wttr.in/Melbourne"

# Setup frequent dirs in the CDPATH so we can cd to them from anywhere
# https://thoughtbot.com/blog/cding-to-frequently-used-directories-in-zsh
setopt auto_cd
cdpath=($HOME/Sites $HOME/src)

# Setup a zsh suffix alias to allow fast editing using just the filename
# https://opensource.com/article/18/9/tips-productivity-zsh
alias -s {rb,go,py,js,txt,md,yaml,yml}=$EDITOR

# use the plain style for bat
# https://github.com/sharkdp/bat
export BAT_STYLE=plain
