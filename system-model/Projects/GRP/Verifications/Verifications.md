# Elements

Verifications describe *how* requirements are proven satisfied. Concrete
verifications (`test-`, `analysis-`, `inspection-`, `demonstration-`,
`formal-proof-`) each roll up to a `verification-objective` parent via
`derivedFrom`, and point at the leaf requirement(s) they cover via `verify`.
Evidence-backed types may add `satisfiedBy` links to test scripts or reports.

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
