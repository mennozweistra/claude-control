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

### Firefox MCP Configuration Test
```
**Issue**: Testing Firefox browser configuration for Playwright MCP server
**Configuration**: `claude mcp add playwright "npx @playwright/mcp --browser firefox"`
**Status**: Failed - MCP server shows "Failed to connect" in `claude mcp list`
**Workaround**: browser-tools MCP remains functional (screenshot capability confirmed)
**Date**: 2025-07-31
```

### WebKit MCP Configuration Test
```
**Issue**: Testing WebKit browser configuration for Playwright MCP server
**Configuration**: `claude mcp add playwright "npx @playwright/mcp --browser webkit"`
**Status**: Failed - MCP server shows "Failed to connect" in `claude mcp list`
**Workaround**: browser-tools MCP remains functional (screenshot capability confirmed)
**Date**: 2025-07-31
```

### Headless Chromium MCP Configuration Test
```
**Issue**: Testing headless Chromium browser configuration for Playwright MCP server
**Configuration**: `claude mcp add playwright "npx @playwright/mcp --browser chromium --headless"`
**Status**: Failed - MCP server shows "Failed to connect" in `claude mcp list`
**Workaround**: browser-tools MCP remains functional (screenshot capability confirmed)
**Date**: 2025-08-01
```

### Example Entry:
```
**Issue**: [Description of the problem encountered]
**Solution**: [Command or approach that resolved it]
**Date**: [When this was resolved]
```

---

**Issue**: Playwright MCP server fails to connect with CHROME_PATH environment variable configuration
**Solution**: CHROME_PATH=/usr/bin/chromium-browser configuration failed - connection still not working. Browser-tools MCP remains functional.
**Date**: 2025-08-01

---

**Issue**: Playwright MCP server fails to connect with alternative Chromium paths configuration
**Solution**: Both /usr/bin/chromium-browser and /snap/bin/chromium paths failed - connection still not working. Browser-tools MCP remains functional with screenshot capability confirmed.
**Date**: 2025-08-01

---

**Issue**: Playwright MCP server fails to connect even after Chrome installation
**Solution**: Chrome installation via Playwright completed successfully, but MCP server connection still fails. Browser-tools MCP remains functional with screenshot capability confirmed.
**Date**: 2025-08-01

---

*Tool documentation is maintained as part of the workflow defined in `./.claude/workflow.md`*