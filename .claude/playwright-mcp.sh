#!/bin/bash
export PATH="/home/menno/.nvm/versions/node/v22.17.1/bin:$PATH"
exec npx @playwright/mcp "$@"