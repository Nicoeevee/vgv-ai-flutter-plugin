# AI Agent Compatibility Contract

## Purpose

This document defines how AI coding agents consume the VGV Flutter plugin resources.

## Shared Resources

The following directories are agent-neutral:

```text
skills/
agents/
```

They contain engineering knowledge and review workflows.

## Agent Entry Points

### Claude Code

Uses:

```text
.claude-plugin/
CLAUDE.md
```

### OpenAI Codex

Uses:

```text
.codex-plugin/
CODEX.md
```

## Skill Rules

Skills should:

- describe repeatable engineering workflows
- avoid agent-specific commands when possible
- include examples and anti-patterns
- remain compatible with multiple coding agents

## Agent Rules

Agents should:

- have a clear responsibility
- avoid modifying files unless explicitly required
- provide actionable findings
- follow the shared Flutter/Dart standards

## MCP Boundary

MCP tools provide execution capabilities.

Skills provide knowledge and decision rules.

Agents should not duplicate MCP functionality inside instructions.

## Compatibility Goal

New skills and agents should work in both Claude Code and OpenAI Codex unless a platform-specific limitation is documented.
