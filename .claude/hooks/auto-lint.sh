#!/bin/bash
# PostToolUse hook — run ESLint after file edits
INPUT=$(cat)
FILE=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

if [ -z "$FILE" ]; then
  exit 0
fi

# Only lint JS/TS files
if ! echo "$FILE" | grep -qE '\.(js|ts|jsx|tsx|mjs|cjs)$'; then
  exit 0
fi

npx eslint --fix "$FILE" 2>/dev/null || true
exit 0
