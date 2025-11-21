#!/bin/zsh
# Check requirement
if [[ "$(uname)" != "Darwin" ]]; then
  echo "Error: This script is only for MacOS"
  exit 1
fi

# Require zsh and git
if ! command -v zsh &> /dev/null || ! command -v git &> /dev/null; then
  echo "Error: zsh or git is not installed"
  exit 1
fi

# clone this repo to ~/.zsh
# keep git files
# delete this folder
# update zshrc to use ~/.zsh folder
# update gitconfig to use ~/.zsh/gitconfig



