# ============================================
# NPM/BUN Configuration
# ============================================
# Cấu hình để thay thế npm bằng bun cho hiệu suất tốt hơn
# Đặt USE_BUN=false trong môi trường để tắt tính năng này

# Kiểm tra biến môi trường (mặc định là true nếu không được đặt)
: ${USE_BUN:=true}

# Kiểm tra xem bun có được cài đặt không
if command -v bun &> /dev/null && [ "$USE_BUN" = true ]; then
  # Đặt cờ để các script khác biết đang dùng bun
  export USING_BUN=true
  
  # Thay thế npm bằng bun
  npm() {
    # Hiển thị thông báo nếu NPM_VERBOSE được bật
    [ "$NPM_VERBOSE" = true ] && echo "🚀 Using bun instead of npm"
    command bun "$@"
  }

  # Thay thế npx bằng bunx
  npx() {
    [ "$NPM_VERBOSE" = true ] && echo "🚀 Using bunx instead of npx"
    command bunx "$@"
  }

  # Hàm để chạy npm thực sự (bỏ qua override)
  real-npm() {
    command npm "$@"
  }
  
  # Hàm để chạy npx thực sự (bỏ qua override)
  real-npx() {
    command npx "$@"
  }
else
  export USING_BUN=false
fi

# Hàm để toggle giữa npm và bun
toggle-bun() {
  if [ "$USE_BUN" = true ]; then
    export USE_BUN=false
    echo "✓ Switched to npm"
    echo "  Reload shell or run: source ~/.zshrc"
  else
    if command -v bun &> /dev/null; then
      export USE_BUN=true
      echo "✓ Switched to bun"
      echo "  Reload shell or run: source ~/.zshrc"
    else
      echo "✗ bun is not installed. Install it first:"
      echo "  curl -fsSL https://bun.sh/install | bash"
    fi
  fi
}

# Hàm để hiển thị trạng thái hiện tại
npm-status() {
  echo "Package Manager Status:"
  echo "======================="
  if [ "$USING_BUN" = true ]; then
    echo "✓ Currently using: bun"
    echo "  bun version: $(bun --version 2>/dev/null || echo 'unknown')"
  else
    echo "✓ Currently using: npm"
    echo "  npm version: $(npm --version 2>/dev/null || echo 'unknown')"
  fi
  echo ""
  echo "Available commands:"
  echo "  toggle-bun    - Switch between npm and bun"
  echo "  npm-status    - Show this status"
  echo "  real-npm      - Use npm directly (bypass override)"
  echo "  real-npx      - Use npx directly (bypass override)"
}