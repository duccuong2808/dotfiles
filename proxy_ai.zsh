# ProxyPal - Claude Code Configuration
# Set to "true" to enable, "false" to disable
CLIProxy="true"

# css or proxypal
# css = https://github.com/kaitranntt/ccs/
# proxypal = https://github.com/heyhuynhgiabuu/proxypal
# antigravity-tools = https://github.com/lbjlaq/Antigravity-Manager/blob/main/README_EN.md
: ${PROXY_PROVIDER:="proxypal"}
: ${ANTIGRATIVY_AUTH_TOKEN:="[Please define at constant_secret.zsh file]"}

if [ "$CLIProxy" = "true" ]; then
  if [ "$PROXY_PROVIDER" = "ccs" ]; then
    export ANTHROPIC_BASE_URL="http://127.0.0.1:8317/api/provider/agy"
    export ANTHROPIC_AUTH_TOKEN="ccs-internal-managed"
  fi

  if [ "$PROXY_PROVIDER" = "proxypal" ]; then
    export ANTHROPIC_BASE_URL="http://127.0.0.1:8317"
    export ANTHROPIC_AUTH_TOKEN="proxypal-local"
  fi

  if [ "$PROXY_PROVIDER" = "antigravity-tools" ]; then
    export ANTHROPIC_BASE_URL="http://127.0.0.1:8045"
    export ANTHROPIC_AUTH_TOKEN="$ANTIGRATIVY_AUTH_TOKEN"
  fi

  # For Claude Code 2.x
  export ANTHROPIC_DEFAULT_OPUS_MODEL="gemini-claude-opus-4-5-thinking"
  # export ANTHROPIC_DEFAULT_SONNET_MODEL="gemini-claude-sonnet-4-5"
  export ANTHROPIC_DEFAULT_SONNET_MODEL="gemini-claude-sonnet-4-5-thinking"
  export ANTHROPIC_DEFAULT_HAIKU_MODEL="gemini-3-flash-preview"
fi
