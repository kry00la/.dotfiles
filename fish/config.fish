export VISUAL=vim
export EDITOR="$VISUAL"
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
# location

set -g -x WMI Den_haag

if status is-interactive
# Commands to run in interactive sessions can go here
end
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/leonardo/.ghcup/bin $PATH # ghcup-env

## rust
set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/opt/homebrew/bin $PATH
set PATH $HOME/opt/homebrew/sbin $PATH
set PATH $HOME/opt/homebrew/thrift $PATH
## python
## set -xg PYTHONPATH /path/to/test/folder $PYTHONPATH

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

