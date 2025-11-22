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

# update zshrc to use ~/.zsh folder
ZSHRC="$HOME/.zshrc"
AUTOLOAD_LINE="[ -f \"\$HOME/.zsh/autoload.zsh\" ] && source \"\$HOME/.zsh/autoload.zsh\""

# Kiểm tra xem đã load autoload.zsh chưa
if ! grep -q "autoload.zsh" "$ZSHRC" 2>/dev/null; then
  echo "Đang thêm autoload vào $ZSHRC..."
  echo "" >> "$ZSHRC"
  echo "$AUTOLOAD_LINE" >> "$ZSHRC"
  echo "✓ Đã thêm autoload thành công!"
else
  echo "✓ Autoload đã tồn tại trong $ZSHRC"
fi

# update gitconfig to use ~/.zsh/gitconfig
GITCONFIG="$HOME/.gitconfig"
GITCONFIG_INCLUDE="[include]
	path = ~/.zsh/gitconfig"

# Kiểm tra xem đã include gitconfig chưa
if ! grep -q ".zsh/gitconfig" "$GITCONFIG" 2>/dev/null; then
  echo "Đang thêm gitconfig include vào $GITCONFIG..."
  echo "" >> "$GITCONFIG"
  echo "$GITCONFIG_INCLUDE" >> "$GITCONFIG"
  echo "✓ Đã thêm gitconfig include thành công!"
else
  echo "✓ Gitconfig include đã tồn tại trong $GITCONFIG"
fi
