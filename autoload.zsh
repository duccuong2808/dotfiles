# ~/.zshrc - Version tự động load
ZSH_CONFIG_DIR="$HOME/.zsh"

if [ -d "$ZSH_CONFIG_DIR" ]; then
  # Load constant_secret.zsh first (if exists) - this file is gitignored
  # Contains private constants that can be used in all other .zsh files
  if [ -f "$ZSH_CONFIG_DIR/constant_secret.zsh" ]; then
    source "$ZSH_CONFIG_DIR/constant_secret.zsh"
  fi

  # Load all .zsh files except autoload.zsh and constant_secret.zsh
  for config_file in ~/.zsh/*.zsh; do
    local basename="$(basename "$config_file")"
    # Skip autoload.zsh and constant_secret.zsh (already loaded above)
    if [[ "$basename" != "autoload.zsh" && "$basename" != "constant_secret.zsh" ]]; then
      source "$config_file"
    fi
  done
fi
