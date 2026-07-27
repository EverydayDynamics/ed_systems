# Elements

Verifications describe *how* requirements are proven satisfied. Concrete
verifications (`test-`, `analysis-`, `inspection-`, `demonstration-`,
`formal-proof-`) each roll up to a `verification-objective` parent via
`derivedFrom`, and point at the leaf requirement(s) they cover via `verify`.
Evidence-backed types may add `satisfiedBy` links to test scripts or reports.

### Power Compatibility Verification

Grouping objective for verifications that prove the system runs on standard
mains power without special electrical infrastructure.

#### Metadata
  * type: verification-objective
---

### Mains Power Draw Test

#### Details

##### Acceptance Criteria
- Steady-state current draw stays ≤ 5 A RMS across the full performance
  cycle, including simultaneous Dynamixel motor moves.
- Inrush current at power-on stays ≤ 15 A and decays to steady-state within
  20 ms.

##### Test Criteria
- Run a full performance cycle on a metered 230 V circuit; log RMS current
  draw; confirm no breaker trips and steady-state stays under 5 A.
- Capture power-on inrush with a current probe/oscilloscope; confirm peak
  stays under 15 A and duration above steady-state stays under 20 ms.

#### Metadata
  * type: test-verification

#### Relations
  * derivedFrom: [Power Compatibility Verification](#power-compatibility-verification)
  * verify: [Standard Mains Power Operation](../Requirements/PowerRequirements.md#standard-mains-power-operation)
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

