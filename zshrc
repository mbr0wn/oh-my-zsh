# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
 DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
#DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(vi-mode zsh-syntax-highlighting gitfast git-extras svn history history-substring-search command-not-found colored-man colorize copyfile copydir cp dircycle hugs)

MODE_INDICATOR="-- NORMAL --"

# Load OMZ
source $ZSH/oh-my-zsh.sh

### PATHS ###################################################################
# etc.
source ~/.shenv

export DEFAULT_USER=mbant
export TERM=xterm-256color

### ALIASES #################################################################
# Anything compatible to Bash
source ~/.alias

# Suffix aliases (entering foo.tex starts gvim w/ foo.tex)
alias -s tex="gvim"
alias -s txt="vim"
alias -s html="firefox"
alias -s org="firefox"

# Global aliases
alias -g G='|grep'
alias -g L='|less'
alias -g T='| tail'
alias -g TF='| tail -f'

# Pseudo-aliases
wikip() { x-www-browser "http://en.wikipedia.org/wiki/$*" }
wikid() { x-www-browser "http://de.wikipedia.org/wiki/$*" }
gsearch() { x-www-browser "http://www.google.com/search?q=$*"; }
alias g=gsearch

### HISTORY #################################################################
setopt hist_ignore_space hist_reduce_blanks inc_append_history hist_ignore_dups

# By help of hist_ignore_space, the following commands get kicked out of
# the history
for c in cd pwd shred; do
	eval "alias $c=' $c'"
done
alias ls=' ls --color'
HISTFILE=~/.histfile
