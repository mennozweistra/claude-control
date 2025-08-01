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
**Solution**: Use bash wrapper scripts with explicit PATH and exec for all MCP servers:

**Playwright MCP Wrapper** (`.claude/playwright-mcp.sh`):
```bash
#!/bin/bash
export PATH="/home/menno/.nvm/versions/node/v22.17.1/bin:$PATH"
exec npx @playwright/mcp "$@"
```

**Chrome MCP Wrapper** (`.claude/chrome-mcp.sh`):
```bash
#!/bin/bash
export PATH="/home/menno/.nvm/versions/node/v22.17.1/bin:$PATH"
exec npx chrome-mcp-stdio "$@"
```

**Browser Tools MCP Wrapper** (`.claude/browser-tools-mcp.sh`):
```bash
#!/bin/bash
export PATH="/home/menno/.nvm/versions/node/v22.17.1/bin:$PATH"
exec npx browser-tools-mcp "$@"
```

**Configuration Commands**:
```bash
claude mcp add playwright "/path/to/project/.claude/playwright-mcp.sh"
claude mcp add chrome-mcp-stdio "/path/to/project/.claude/chrome-mcp.sh"
claude mcp add browser-tools "/path/to/project/.claude/browser-tools-mcp.sh"
```

**Status**: ✅ FULLY RESOLVED - All MCP servers now connect consistently, no Claude Code restarts required
**Verification**: `claude mcp list` shows all servers as "✓ Connected"
**Date**: 2025-08-01

---

*Tool documentation is maintained as part of the workflow defined in `./.claude/workflow.md`*