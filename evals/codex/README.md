# Codex Plugin Evaluation

This directory contains validation guidance for OpenAI Codex compatibility.

## Goals

- Verify Codex discovers the plugin metadata.
- Verify shared skills are available.
- Verify Flutter and Dart guidance is applied consistently.

## Manual Checks

1. Install the plugin from the marketplace metadata.
2. Open a Flutter project.
3. Ask Codex to:
   - create a Bloc feature
   - review architecture
   - add tests
   - improve accessibility

Expected result:

- Codex uses the shared `skills/` knowledge base.
- Codex follows VGV Flutter conventions.
- Claude Code compatibility remains unchanged.
