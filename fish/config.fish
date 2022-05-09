export VISUAL=vim
export EDITOR="$VISUAL"
## weather
alias weather='curl wttr.in/rotterdam'

## STARSHIP  ##

starship init fish | source

## icons
source ~/.local/share/icons-in-terminal/icons.fish


## fish

alias sourceme='source ~/.config/fish/config.fish'
alias editme='vim ~/.config/fish/config.fish'

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type

##

alias vim='nvim'
alias vi='nvim'
# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l='exa -a | egrep "^\."'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# git
alias addall='git add -N . && git add -p'
alias addup='git add -p'
#alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
# moved to fish function
#alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
#alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'
alias gs='git status'
alias repo='open (git config --get remote.origin.url)'
alias patchup='git add . && commit "f" && git rebase -i HEAD~2'

if status is-interactive
# Commands to run in interactive sessions can go here
end
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/leonardo/.ghcup/bin $PATH # ghcup-env

## rust
set PATH $HOME/.cargo/bin $PATH
