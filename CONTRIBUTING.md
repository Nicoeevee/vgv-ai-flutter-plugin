# 🦄 Contributing to VGV AI Flutter Plugin

First of all, thank you for taking the time to contribute! Before you do, please carefully read this guide.

## AI Agent Compatibility

This plugin supports multiple AI coding agents while sharing the same Flutter and Dart knowledge base.

| Agent | Entry point | Shared resources |
| --- | --- | --- |
| Claude Code | `.claude-plugin/`, `CLAUDE.md` | `skills/`, `agents/`, `docs/` |
| OpenAI Codex | `.codex-plugin/`, `CODEX.md` | `skills/`, `agents/`, `docs/` |

When adding or changing capabilities:

- Keep reusable Flutter/Dart guidance in `skills/`.
- Keep specialized workflows in `agents/`.
- Keep agent-specific metadata in the corresponding agent directory.
- Do not duplicate the same knowledge in Claude and Codex entry files.

## Getting Started

1. **Fork** the repository and clone your fork locally.
2. Create a new branch from `main` for your work.
3. Open the project in your editor of choice.

## Types of Contributions

| Contribution | Where |
| ------------ | ----- |
| **New skill** | `skills/<skill-name>/SKILL.md` |
| **Improve an existing skill** | Edit the relevant `skills/*/SKILL.md` or `reference.md` |
| **Eval cases** | `evals/` |
| **Hooks** | `hooks/` directory |
| **Codex metadata** | `.codex-plugin/` |
| **Claude metadata** | `.claude-plugin/` |
| **Bug reports & feature requests** | GitHub Issues |

## Adding Agent Support

New agent integrations must:

1. Add an isolated entry point.
2. Reuse existing skills and agents where possible.
3. Document installation and validation steps.
4. Add CI validation when metadata or workflows change.

## Adding a New Skill

Create:

```text
skills/<skill-name>/SKILL.md
```

The file must contain YAML frontmatter and production-ready Flutter/Dart guidance.

After adding a skill:

- Add evaluation coverage.
- Update README documentation.
- Verify Claude Code and Codex can discover the skill.

## Testing Locally

Validate plugin structure before opening a PR:

```bash
./scripts/validate-codex-plugin.sh
```

For Claude Code:

```bash
claude plugin validate .
```

## Commit Convention

Use Conventional Commits:

```text
type(scope): description
```

## Pull Requests

- Keep PRs focused.
- Include validation results.
- Update documentation for new capabilities.
- Ensure Claude and Codex compatibility is preserved.
