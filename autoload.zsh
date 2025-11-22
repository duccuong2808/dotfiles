# ~/.zshrc - Version tự động load
ZSH_CONFIG_DIR="$HOME/.zsh"

if [ -d "$ZSH_CONFIG_DIR" ]; then
  # Load all .zsh files except autoload.zsh itself
  for config_file in ~/.zsh/*.zsh; do
    # Skip if it's the autoload.zsh file
    if [[ "$(basename "$config_file")" != "autoload.zsh" ]]; then
      source "$config_file"
    fi
  done
fi
