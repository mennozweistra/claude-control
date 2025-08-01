#!/bin/bash
export PATH="/home/menno/.nvm/versions/node/v22.17.1/bin:$PATH"
exec node /home/menno/.nvm/versions/node/v22.17.1/lib/node_modules/mcp-chrome-bridge/dist/mcp/mcp-server-stdio.js "$@"