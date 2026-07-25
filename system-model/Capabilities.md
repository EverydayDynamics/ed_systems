# Elements

Capabilities describe *what the system can do* for a stakeholder, in user-story
form. Each capability is decomposed (`derive`) into finer capabilities and is
ultimately specified by one or more requirements (via a requirement's `specify`
relation pointing here).

### Audience-Responsive Kinetics

As a **gallery visitor**, I want the sculpture to sense and respond to my
presence and movement, so that the piece feels alive and creates a sense of
dialogue between me and the machine.

#### Details
This is the flagship capability of the EverydayDynamics pieces: the work is not
a fixed object but a responsive presence. Response must feel intentional and
organic rather than reactive or mechanical.

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * risk: medium
  * status: draft

#### Relations
  * derive: [Expressive Motion](#expressive-motion)
  * derive: [Presence Sensing](#presence-sensing)
---

### Expressive Motion

As a **piece**, I want to move with lifelike, choreographed motion, so that the
audience reads the movement as expressive rather than functional.

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft

#### Relations
  * derivedFrom: [Audience-Responsive Kinetics](#audience-responsive-kinetics)
---

### Presence Sensing

As a **piece**, I want to detect when people are near and where they are, so
that motion and light can be directed toward them.

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft

#### Relations
  * derivedFrom: [Audience-Responsive Kinetics](#audience-responsive-kinetics)
---

### Safe Public Operation

As a **gallery operator**, I want the piece to operate safely around
unsupervised members of the public, so that it can run unattended for the
duration of an exhibition.

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * risk: high
  * status: draft
---
