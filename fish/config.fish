export VISUAL=vim
export EDITOR="$VISUAL"
## weather
alias weather='curl wttr.in/rotterdam'

## STARSHIP  ##

starship init fish | source

## icons
#source ~/.local/share/icons-in-terminal/icons.fish

## fish

alias sourceme='source ~/.config/fish/config.fish'
alias editme='vim ~/.config/fish/config.fish'

### EXPORT ###
set TERM "xterm-256color"
##

alias vim='nvim'
alias vi='nvim'
alias v='vim'
alias letsdovim='cd ~/.dotfiles/nvim && v'
# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

#ranger
alias r='ranger'

# Changing "ls" to "exa"
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias ll='ls -la'
alias tree='ls --tree'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# 
alias j='z '

# bat

alias cat='bat --theme=ansi'

if status is-interactive
# Commands to run in interactive sessions can go here
end
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/leonardo/.ghcup/bin $PATH # ghcup-env

## rust
set PATH $HOME/.cargo/bin $PATH

## python
## set -xg PYTHONPATH /path/to/test/folder $PYTHONPATH
