# Elements

System-level requirements. Each requirement is a single testable "shall"
statement written in EARS form, points up to the capability it specifies, and is
verified by one or more verification elements.

As the model grows, split subsystem requirements into sibling files/folders
(e.g. `Mechanical/`, `Electronics/`, `Firmware/`, `Software/`) and keep the
cross-links — reqvire resolves relations across the whole workspace.

### Actuate Sculptural Movement

When a visitor is detected in the interaction zone, the system shall begin a
choreographed movement sequence.

#### Metadata
  * type: requirement
  * status: draft

#### Relations
  * specify: [Expressive Motion](../Capabilities.md#expressive-motion)
---

### Detect Visitor Presence

When a visitor enters the interaction zone, the system shall detect their
presence within 500 ms.

#### Metadata
  * type: requirement
  * status: draft

#### Relations
  * specify: [Presence Sensing](../Capabilities.md#presence-sensing)
  * verifiedBy: [Presence Detection Latency Test](../Verifications/Verifications.md#presence-detection-latency-test)
---
