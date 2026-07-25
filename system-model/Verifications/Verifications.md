# Elements

Verifications describe *how* requirements are proven satisfied. Concrete
verifications (`test-`, `analysis-`, `inspection-`, `demonstration-`,
`formal-proof-`) each roll up to a `verification-objective` parent via
`derivedFrom`, and point at the leaf requirement(s) they cover via `verify`.
Evidence-backed types may add `satisfiedBy` links to test scripts or reports.

### Interaction Verification

Grouping objective for verifications that prove the audience-interaction
behavior of the piece.

#### Metadata
  * type: verification-objective
---

### Motion Quality Review

Structured subjective review of movement footage against reference material to
judge whether motion reads as organic.

#### Details

##### Acceptance Criteria
- Reviewers agree motion reads as organic/lifelike, with no abrupt transitions.

##### Test Criteria
- Record each movement sequence; review against reference footage; note any
  abrupt transitions or audible actuator whine for rework.

#### Metadata
  * type: inspection-verification

#### Relations
  * derivedFrom: [Interaction Verification](#interaction-verification)
  * verify: [Organic Motion Quality](../Requirements/ExperienceRequirements.md#organic-motion-quality)
---

### Presence Detection Latency Test

Automated bench test measuring the time from a target entering the sensor field
to the controller asserting a "presence detected" event.

#### Details

##### Acceptance Criteria
- Presence is detected within 500 ms across the full interaction zone.

##### Test Criteria
- Move a standard target into the zone at marked distances; log sensor-to-event
  latency over N trials; 95th-percentile latency < 500 ms.

#### Metadata
  * type: test-verification

#### Relations
  * derivedFrom: [Interaction Verification](#interaction-verification)
  * verify: [Detect Visitor Presence](../Requirements/SystemRequirements.md#detect-visitor-presence)
---

### Safety Verification

Grouping objective for verifications that prove safe public operation.

#### Metadata
  * type: verification-objective
---

### Emergency Stop Demonstration

Operational demonstration that intrusion into the mechanism envelope halts all
actuation within the required time.

#### Details

##### Acceptance Criteria
- All actuation halts within 200 ms of envelope intrusion, every trial.

##### Test Criteria
- Trigger the guard with a test object during motion; measure time to zero
  actuation via high-speed capture; repeat across each hazardous joint.

#### Metadata
  * type: demonstration-verification

#### Relations
  * derivedFrom: [Safety Verification](#safety-verification)
  * verify: [Pinch-Point Safety Stop](../Requirements/SafetyRequirements.md#pinch-point-safety-stop)
---
