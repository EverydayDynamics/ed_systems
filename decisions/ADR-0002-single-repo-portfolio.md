# ADR-0002: One repo for the whole portfolio (system-of-systems)

- **Status:** Accepted
- **Date:** 2026-07-25

## Context

EverydayDynamics will produce many artifacts — multiple kinetic-art pieces plus
non-art things like websites. The question: manage all systems-engineering
requirements in **one repo**, or a **separate repo per project**?

Key facts:

- Reqvire resolves relations only **within a single git workspace** (relative
  paths, one worktree). Cross-repo traceability is impossible.
- Reqvire has first-class multi-project support: `submodels` analyzes each
  capability-rooted subtree as an independent submodel and reports cross-submodel
  couplings — but only inside one workspace.
- Shared assets already exist: the stakeholder register (Gallery Visitor / Gallery
  Operator recur across pieces), and soon shared safety patterns and a
  motion-control platform.
- EverydayDynamics is a small studio wanting portfolio-level oversight and an
  AI-native workflow (one agent reasoning across everything).

## Decision

Keep the **entire systems model in this one repo**, organized as a portfolio:
`Enterprise/` (org level), `Shared/` (reusable assets/capabilities), and
`Projects/<NAME>/` (one capability-rooted submodel per project). Implementation
**code** (firmware, website source, CAD) lives in its own separate repos; the
model references it by URL/prose or `source` elements.

## Consequences

- Single traceability graph across all projects; `submodels` gives per-project
  views and cross-project coupling analysis without splitting repos.
- Shared vocabulary and platform capabilities are defined once and reused, not
  copy-pasted and drifted.
- Model-to-code `satisfiedBy` only resolves inside this workspace; external code
  repos are referenced indirectly (accepted trade-off).
- If a project ever needs a hard boundary (external collaborator access,
  independent open-sourcing), it can be extracted into its own repo later — it's
  just Markdown. We split only on a concrete need, not speculatively.
