# VGV AI Flutter Plugin

[![Very Good Ventures][logo_white]][very_good_ventures_link_dark]
[![Very Good Ventures][logo_black]][very_good_ventures_link_light]

A plugin that accelerates Flutter & Dart development with best-practices skills from [Very Good Ventures][vgv_link].

Developed with 💙 by [Very Good Ventures][vgv_link] 🦄

## Supported AI Coding Agents

| Agent | Support |
| ----- | ------- |
| Claude Code | ✅ |
| OpenAI Codex | ✅ |

The plugin keeps a shared engineering knowledge base while providing agent-specific entry points:

- Claude Code configuration: `.claude-plugin/`, `CLAUDE.md`
- OpenAI Codex configuration: `.codex-plugin/`, `CODEX.md`
- Codex marketplace manifest: `.agents/plugins/marketplace.json`
- Shared resources: `skills/`, `agents/`

## Installation

### Claude Code

```bash
claude plugin marketplace add VeryGoodOpenSource/very-good-claude-code-marketplace && claude plugin install vgv-ai-flutter-plugin
```

### OpenAI Codex

Install from the Codex marketplace manifest:

```bash
codex plugin marketplace add Nicoeevee/vgv-ai-flutter-plugin
codex plugin install vgv-ai-flutter-plugin
```

## Overview

VGV AI Flutter Plugin is a collection of contextual best-practices skills for Flutter and Dart development. Skills provide production-quality guidance covering architecture patterns, naming conventions, folder structures, code examples, testing strategies, security practices, and anti-patterns.

## Architecture

```text
.
├── .claude-plugin/              # Claude Code plugin metadata
├── .codex-plugin/               # OpenAI Codex plugin metadata
├── .agents/plugins/             # Codex marketplace metadata
├── agents/                      # Shared specialized reviewers
├── skills/                      # Shared Flutter/Dart knowledge
├── CLAUDE.md                    # Claude-specific instructions
└── CODEX.md                     # Codex-specific instructions
```

## Agent Compatibility

See [docs/agent-compatibility.md](docs/agent-compatibility.md) for:

- skill discovery rules
- agent lifecycle expectations
- MCP usage boundaries
- Claude Code and Codex differences

## Skills

The plugin includes Flutter and Dart skills for:

- Project creation
- Architecture
- Bloc state management
- Testing
- Navigation
- Internationalization
- Material theming
- Accessibility
- Security review
- Package development
- SDK upgrades

See the `skills/` directory for complete documentation.

## Agents

This plugin ships specialized reviewers that can be dispatched by compatible coding agents.

Current agents:

| Agent | Description |
| ----- | ----------- |
| Flutter Reviewer | Reviews Dart changes against architecture, testing, security, and accessibility standards |

## MCP Integration

Claude Code MCP configuration is provided through `.mcp.json`.

The shared skills remain agent-neutral. MCP tools are used for execution, while skills provide engineering standards and workflows.

[vgv_link]: https://verygood.ventures
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
