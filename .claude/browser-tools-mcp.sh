#!/bin/bash
export PATH="/home/menno/.nvm/versions/node/v22.17.1/bin:$PATH"
exec npx -y @agentdeskai/browser-tools-mcp@1.2.1 "$@"