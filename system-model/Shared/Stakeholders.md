# Elements

The **stakeholder register**: a controlled vocabulary of the roles that have a
stake in the EverydayDynamics pieces. Modeling stakeholders as a `concept-scheme`
of `concept` elements (rather than plaintext inside capability user-stories)
makes them first-class and analyzable:

- enumerate every recorded stakeholder — `reqvire search --filter-type=concept`
  (or browse `make serve`);
- trace each stakeholder to the needs it drives — a need is a capability that
  names this stakeholder via a `#### Concept References` block.

A "need" in this model is a **capability**: reqvire's user-story layer ("As a
&lt;stakeholder&gt;, I want &lt;need&gt;, so that &lt;benefit&gt;") already *is*
the stakeholder-need. The stakeholder concept makes the "As a …" part explicit
and linkable. See `CLAUDE.md` → Stakeholders for the authoring rules.

### Stakeholders

Controlled vocabulary of stakeholder roles for the EverydayDynamics pieces.

#### Metadata
  * type: concept-scheme
  * concept_base: https://everydaydynamics.art/stakeholders
  * concept_prefix: stk
---

### Exhibition Venue

The institution hosting a piece for a show: the gallery, museum, or festival
organisation itself, as distinct from the individual staff who run it day to
day. Concerned with contracts, insurance, regulatory compliance, and the
logistics of getting a piece installed and running in its space — primarily
within the UK, with EU touring in scope.

#### Metadata
  * type: concept

#### Relations
  * derivedFrom: [Stakeholders](#stakeholders)
---

### Gallery Operator

Exhibition staff responsible for switching on, monitoring, and safely running a
piece during its show, typically without the artist present.

#### Metadata
  * type: concept

#### Relations
  * derivedFrom: [Stakeholders](#stakeholders)
---

### Gallery Visitor

A member of the public experiencing a piece in a gallery or exhibition setting.
The primary audience the work is made for.

#### Metadata
  * type: concept

#### Relations
  * derivedFrom: [Stakeholders](#stakeholders)
---
