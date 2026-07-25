# ADR-0001: Reqvire (Markdown-in-git) as the systems-model substrate

- **Status:** Accepted
- **Date:** 2026-07-25

## Context

EverydayDynamics needs a home for systems-engineering artifacts — requirements,
capabilities, interfaces, verification, and decisions — for its robotics-art
pieces. The goal is an *AI-native* setup: an AI agent should be able to read the
whole model, reason over traceability, and propose edits, while the source stays
human-readable and diffable in git.

Options considered:

- **Reqvire** — MBSE model as plain Markdown in git; typed relations; generates
  traceability, coverage, and Mermaid diagrams; ships an MCP server and an agent
  skill. Young project, lightweight conventions.
- **Plain Markdown + hand-rolled convention** — maximum flexibility, no tool to
  compute coverage/traces or catch broken links.
- **SysML v2 textual** — rigorous but heavyweight; tooling immature; overkill for
  an art effort.
- **Doorstop** — git-native but YAML-heavy and less pleasant for humans and LLMs.

## Decision

Adopt **reqvire's conventions** as the substrate. The model lives as Markdown
under `system-model/`; reqvire (run via `npx`, no install) validates structure,
computes coverage/traces, and serves an Explorer UI. An AI agent maintains the
model per the contract in `CLAUDE.md`.

## Consequences

- Source of truth is Markdown → zero lock-in; worst case it's just Markdown.
- Traceability and gap-finding are computed, not hand-maintained.
- We accept a dependency on a young tool; mitigated because the artifacts remain
  valid Markdown independent of reqvire.
- Contributors (human or AI) must follow the element/relation schema so that
  `reqvire validate` stays green.
