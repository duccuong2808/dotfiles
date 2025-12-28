# ProxyPal - Claude Code Configuration
# Set to "true" to enable, "false" to disable
CLIProxy="true"
# PROXY_PROVIDER="ccs" # https://github.com/kaitranntt/ccs/
PROXY_PROVIDER="proxypal" # https://github.com/heyhuynhgiabuu/proxypal

if [ "$CLIProxy" = "true" ]; then
  if [ "$PROXY_PROVIDER" = "ccs" ]; then
    export ANTHROPIC_BASE_URL="http://127.0.0.1:8317/api/provider/agy"
    export ANTHROPIC_AUTH_TOKEN="ccs-internal-managed"
  fi

  if [ "$PROXY_PROVIDER" = "proxypal" ]; then
    export ANTHROPIC_BASE_URL="http://127.0.0.1:8317"
    export ANTHROPIC_AUTH_TOKEN="proxypal-local"
  fi

  # For Claude Code 2.x
  export ANTHROPIC_DEFAULT_OPUS_MODEL="gemini-claude-opus-4-5-thinking"
  # export ANTHROPIC_DEFAULT_SONNET_MODEL="gemini-claude-sonnet-4-5"
  export ANTHROPIC_DEFAULT_SONNET_MODEL="gemini-claude-sonnet-4-5-thinking"
  export ANTHROPIC_DEFAULT_HAIKU_MODEL="claude-haiku-4-5-20251001"
fi
