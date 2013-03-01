# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
brscan-skey

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="agnoster"
#ZSH_THEME="bira"
 ZSH_THEME="steeef"

#export TERM=xterm-256color
export EDITOR=vim
export GREP_OPTIONS='--exclude-dir=.svn'

# Example aliases
alias grep="grep --color"
alias pacman="pacman-color"
alias scp-resume="rsync --partial --progress --rsh=ssh $1"
alias fixeth="sudo ethtool -K eth0 rx off tx off"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(svn git git-extras npm pip systemd zsh-syntax-highlighting pygmentize-zsh encode64 urltools nyan lol)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
