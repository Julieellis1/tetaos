#!/bin/sh
# Writes the Contact chat's AI config from Dokploy environment variables.
# TETA_AI_BASE_URL (e.g. https://api.openai.com/v1), TETA_AI_MODEL, TETA_AI_KEY.
# Missing values leave the AI off; the chat then uses its scripted flow.
clean() { printf '%s' "$1" | tr -d "'\"\\"; }
cat > /usr/share/nginx/html/ai-config.js <<EOF
window.TETA_AI = { baseUrl: "$(clean "$TETA_AI_BASE_URL")", model: "$(clean "$TETA_AI_MODEL")", apiKey: "$(clean "$TETA_AI_KEY")" };
EOF
