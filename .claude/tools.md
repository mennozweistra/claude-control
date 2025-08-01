# Available Tools and Commands

This document lists available tools and their command-line instructions. When AI resolves tool call issues, the solutions are documented here to prevent repeated struggles.

## Development Tools

<!-- Development environment tools and commands -->

## Testing Tools

<!-- Testing frameworks and commands -->

## Build Tools

<!-- Build, compile, and deployment commands -->

## Debugging Tools

<!-- Debugging and troubleshooting tools -->

## MCP Browser Tools

<!-- Browser testing and interaction tools -->

## Resolved Tool Issues

<!-- When AI resolves tool problems, document the solutions here -->

### Example Entry:
```
**Issue**: [Description of the problem encountered]
**Solution**: [Command or approach that resolved it]
**Date**: [When this was resolved]
```

---

**Issue**: Playwright MCP server persistent connection failures despite working MCP protocol
**Root Cause**: Claude Code command parsing treats complex commands like `npx @playwright/mcp` as single executable names, causing ENOENT errors
**Solution**: Use global bash wrapper scripts with explicit PATH and exec for all MCP servers:

**Global Setup** (run once):
```bash
# Create global MCP wrapper directory
mkdir -p ~/.local/bin/mcp-wrappers

# Create wrapper scripts (adjust NODE_PATH as needed)
cat > ~/.local/bin/mcp-wrappers/playwright-mcp.sh << 'EOF'
#!/bin/bash
export PATH="/home/menno/.nvm/versions/node/v22.17.1/bin:$PATH"
exec npx @playwright/mcp "$@"
EOF

cat > ~/.local/bin/mcp-wrappers/chrome-mcp.sh << 'EOF'
#!/bin/bash
export PATH="/home/menno/.nvm/versions/node/v22.17.1/bin:$PATH"
exec npx chrome-mcp-stdio "$@"
EOF

cat > ~/.local/bin/mcp-wrappers/browser-tools-mcp.sh << 'EOF'
#!/bin/bash
export PATH="/home/menno/.nvm/versions/node/v22.17.1/bin:$PATH"
exec npx browser-tools-mcp "$@"
EOF

# Make scripts executable
chmod +x ~/.local/bin/mcp-wrappers/*.sh
```

**Configuration Commands** (per project):
```bash
claude mcp add playwright "$HOME/.local/bin/mcp-wrappers/playwright-mcp.sh"
claude mcp add chrome-mcp-stdio "$HOME/.local/bin/mcp-wrappers/chrome-mcp.sh"
claude mcp add browser-tools "$HOME/.local/bin/mcp-wrappers/browser-tools-mcp.sh"
```

**Status**: ✅ FULLY RESOLVED - All MCP servers now connect consistently, no Claude Code restarts required
**Verification**: `claude mcp list` shows all servers as "✓ Connected"
**Date**: 2025-08-01

---

*Tool documentation is maintained as part of the workflow defined in `./.claude/workflow.md`*