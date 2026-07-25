# Agent contract — EverydayDynamics systems model

This repo is a **reqvire** systems-engineering model (Markdown-in-git MBSE) for
EverydayDynamics robotics-art pieces. This file is the contract every agent (and
human) follows so the model stays consistent and `reqvire validate` stays green.

Reqvire runs via `npx` — no install:
`npx -y @reqvire-org/reqvire@latest --workspace "$PWD" <command>` (or `make <target>`).

## Golden rules

1. **The model lives in `system-model/`.** Only Markdown there is parsed as
   model elements. `decisions/`, `notes/`, `README.md`, `CLAUDE.md` are excluded
   via `.reqvireignore` (they can still be relation *targets*, e.g. `satisfiedBy`).
2. **Validate before you finish.** Run `make check` (validate + lint). Never
   leave the model in a state that fails `reqvire validate`.
3. **Prefer the reqvire CLI for structural edits** — `add`, `rm`, `mv`, `rename`,
   `link`, `unlink`, `relink`, `merge`. It updates anchors and back-references so
   links don't rot. Hand-editing prose/metadata is fine; hand-editing that moves
   or renames an element is not — use the command.
4. **Every relation target must exist.** Links are `[Text](RelativePath.md#anchor)`;
   the anchor is the GitHub slug of the target heading (lowercase, spaces→`-`,
   punctuation dropped). Same-file targets use `#anchor` with no path.

## Element schema

Model files start with `# Elements`. Each element is an `###` heading followed by
a statement, an optional `#### Details`, a `#### Metadata` block, and a
`#### Relations` block. Elements are separated by `---`.

### Requirement — one testable "shall", in EARS form

```markdown
### Detect Visitor Presence

When a visitor enters the interaction zone, the system shall detect their
presence within 500 ms.

#### Metadata
  * type: requirement
  * status: draft

#### Relations
  * specify: [Presence Sensing](../Capabilities.md#presence-sensing)
  * verifiedBy: [Presence Detection Latency Test](../Verifications/Verifications.md#presence-detection-latency-test)
```

**EARS patterns** (pick one; keep each requirement atomic and verifiable):
- Ubiquitous — "The system shall <capability>."
- Event — "When <trigger>, the system shall <response>."
- State — "While <state>, the system shall <capability>."
- Unwanted — "If <condition>, then the system shall <response>."
- Optional — "Where <feature>, the system shall <capability>."

### Capability — what the system can do, as a user story

```markdown
### Presence Sensing

As a **piece**, I want to detect when people are near, so that motion and light
can be directed toward them.

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft

#### Relations
  * derivedFrom: [Audience-Responsive Kinetics](#audience-responsive-kinetics)
```

Capabilities `derive` sub-capabilities; requirements point *up* to them with
`specify`. Do not put `specify`/`verify` on capabilities.

### Verification — how a requirement is proven

Every concrete verification `derivedFrom` a `verification-objective` (a grouping
parent) and `verify`s the leaf requirement(s) it covers. Only `test-verification`
and `formal-proof-verification` may carry `satisfiedBy` evidence links.

```markdown
### Presence Detection Latency Test

#### Details

##### Acceptance Criteria
- Presence is detected within 500 ms across the full interaction zone.

##### Test Criteria
- Move a target into the zone; log sensor-to-event latency; p95 < 500 ms.

#### Metadata
  * type: test-verification

#### Relations
  * derivedFrom: [Interaction Verification](#interaction-verification)
  * verify: [Detect Visitor Presence](../Requirements/SystemRequirements.md#detect-visitor-presence)
```

Verification types: `verification-objective` (grouping only — no `verify`/
`satisfiedBy`), `test-verification`, `analysis-verification`,
`inspection-verification`, `demonstration-verification`, `formal-proof-verification`.

## Metadata rules

- `status`, `priority`, `risk`, `owner` are **governance** metadata — valid on
  **capabilities and requirements only**, never on verifications.
- Every element needs `type`. Keep `status` current (`draft` → `approved` → …).

## Relation vocabulary

Declared from one side; reqvire infers the inverse. Canonical direction to author:
- `derive` / `derivedFrom` — decomposition (parent → child). Author on the child
  as `derivedFrom` for requirements; capabilities may use `derive` on the parent.
- `specify` — requirement → the capability it specifies (author on the requirement).
- `verify` — verification → the requirement it verifies (author on the verification).
- `verifiedBy` — the inverse, authored on the requirement (either is fine; be
  consistent within a file).
- `satisfiedBy` — element → implementation/evidence (code, doc, test script).
- `refine`, `trace`, `containedBy` — available for finer structure when needed.

## Stakeholders

Stakeholders are modeled as a **concept-scheme**, not plaintext inside user
stories. The register lives in `system-model/Stakeholders.md`: a
`concept-scheme` root with one `concept` per role (each `derivedFrom` the
scheme). This keeps them first-class and analyzable.

A **need is a capability** — reqvire's "As a &lt;stakeholder&gt;, I want
&lt;need&gt;, so that &lt;benefit&gt;" user story *is* the need.

**Required convention — whenever a capability/need names a stakeholder, do BOTH:**

1. Write the stakeholder **inline in the user story as a Markdown link** to its
   concept (for human readability), and
2. Declare it in a **`#### Concept References` block** (this is the part reqvire
   actually parses — it creates the traceable, validated reference).

```markdown
### Audience-Responsive Kinetics

As a [Gallery Visitor](Stakeholders.md#gallery-visitor), I want the sculpture to
respond to my presence, so that the piece feels alive.

#### Metadata
  * type: capability

#### Concept References
  * [Gallery Visitor](Stakeholders.md#gallery-visitor)
```

Both point at the same concept. The block is the source of truth: reqvire does
**not** validate body links, so an inline link alone would rot silently on a
rename — the matching block is what keeps it honest (`rename`/`mv` and `validate`
update and check the block, never the prose). Never write the inline link
without the block.

Rules:
- Apply this to the **stakeholder-facing** capability (the top of a `derive`
  chain). Child capabilities inherit the stakeholder via `derivedFrom` and don't
  need their own inline link or reference.
- `concept` elements take SKOS relations only (`derivedFrom` to the scheme;
  `broader`/`narrower`/`related` between concepts). Never `specify`/`verify`
  them, and never give them `status`/`priority` governance metadata.
- To add a stakeholder: add a `concept` to `Stakeholders.md`; to capture a need:
  add/annotate a capability and give it a Concept Reference to that stakeholder.

Analysis (today): `reqvire search --filter-type=concept` lists the register;
`make serve` shows references. Automated completeness checks (orphan
stakeholders, capabilities missing a stakeholder) are a **future** step — either
a small analysis script or a SHACL semantic-contract; not wired yet.

## Adding things (fast path)

```bash
# Add a requirement (reqvire fixes anchors/back-refs automatically):
npx -y @reqvire-org/reqvire@latest --workspace "$PWD" add system-model/Requirements/SystemRequirements.md <<'EOF'
### New Requirement Name

When <trigger>, the system shall <response>.

#### Metadata
  * type: requirement

#### Relations
  * specify: [Some Capability](../Capabilities.md#some-capability)
EOF

make check   # then always validate + lint
```

## How the model should grow

Start lean; add structure only when it earns its place:
- **Subsystems**: as mechanical/electronics/firmware/software detail arrives,
  split requirements into `system-model/Requirements/<Subsystem>/…` files.
- **Interfaces (ICDs)**: add `system-model/Interfaces/` with requirement-typed
  elements describing each subsystem boundary; link with `satisfiedBy`/`verify`.
- **Risks, BOM, physical architecture**: add as new folders under `system-model/`
  when you need them — reqvire resolves relations across the whole workspace.
- **Decisions**: record architecture/tooling choices as ADRs in `decisions/`.

Keep every change traceable: a new requirement should `specify` a capability and,
if it's a leaf, be `verifiedBy` something. Run `make coverage` to find the gaps.
