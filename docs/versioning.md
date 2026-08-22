# Plugin Versioning

## Version sources

The plugin version must stay synchronized across:

- `.claude-plugin/plugin.json`
- `.codex-plugin/plugin.json`
- `.codex-plugin/marketplace.json`
- `marketplace/index.json`

## Version policy

Use semantic versioning:

- MAJOR: breaking changes to plugin behavior or skill contracts
- MINOR: new skills, agents, MCP integrations, or capabilities
- PATCH: fixes, documentation, and validation improvements

## Release checklist

Before publishing:

- Validate Claude metadata.
- Validate Codex metadata.
- Run plugin checks.
- Verify marketplace entries.
- Verify eval cases.
