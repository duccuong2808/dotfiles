# Ref: https://github.com/skwp/dotfiles/blob/master/zsh/aliases.zsh

# Git Aliases
alias gs='git status'
alias gco='git co'
alias ga='git add -A'
alias gl='git l'
alias glog='git l'
alias gd='git diff'
alias gb='git b'
# Staged and cached are the same thing
alias gpl='git pull'

# Rails
alias c='rails c'
alias ras='rails s'
alias rdm='rails db:migrate'

alias brewup='brew update && brew upgrade && brew cleanup && brew doctor'

if [[ $platform == 'darwin' ]]; then
  # Finder
  alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
  alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
fi

if [[ "$(uname)" == 'Linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ "$(uname)" == 'Darwin' ]]; then
  alias ll='ls -alGh' # ls with hidden files, color, and detailed information
  alias ls='ls -Gh' # ls with color (no hidden files and detailed information)
fi
