# Elements

Capabilities describe *what the system can do* for a stakeholder, in user-story
form. Each capability is decomposed (`derive`) into finer capabilities and is
ultimately specified by one or more requirements (via a requirement's `specify`
relation pointing here).

### Grasp Complexity Revelation

As a [Gallery Visitor](../../Shared/Stakeholders.md#gallery-visitor), I want to
watch a machine turn an ordinary object over in its fingers, so that I
recognise how complex the grasping I do without thinking really is.

#### Details
The primary purpose of the piece. Every other capability exists to serve this
one: the visitor should leave having reconsidered their own hand.

Complexity is not difficulty. The intent is not a machine seen to struggle —
that would read as a machine that is merely bad at this. What must come across
is the *intricacy* of the act: many joints coordinating, the grip continuously
adapting, a whole apparatus engaged in something the visitor performs without a
thought. Fluency and complexity can coexist, and a fluent performance may make
the point better than a laboured one.

#### Concept References
  * [Gallery Visitor](../../Shared/Stakeholders.md#gallery-visitor)

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: critical
  * status: draft
---

### Anthropomorphic Hand Articulation

As a [Gallery Visitor](../../Shared/Stakeholders.md#gallery-visitor), I want
the manipulating end effector's form and movement to read unmistakably as a
hand, so that I map what I see directly onto my own.

#### Details
The comparison to the visitor's own hand is what carries the meaning. A gripper
that manipulated just as well but did not read as a hand would satisfy the
mechanics and lose the point.

How many fingers, whether a thumb opposes them, and their arrangement are
implementation decisions, not part of this capability.

#### Concept References
  * [Gallery Visitor](../../Shared/Stakeholders.md#gallery-visitor)

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft

#### Relations
  * derivedFrom: [Grasp Complexity Revelation](#grasp-complexity-revelation)
---

### In-Hand Object Reorientation

As a [Gallery Visitor](../../Shared/Stakeholders.md#gallery-visitor), I want to
watch a grasped object rotate about multiple axes using finger motion alone,
without it being set down or regrasped, so that the continuous dexterity of
the manipulation is on show.

#### Details
In-hand (dexterous) manipulation rather than pick-and-place. Reorientation
about more than one axis is what separates this from a rotating turntable and
is the specific human skill being pointed at.

#### Concept References
  * [Gallery Visitor](../../Shared/Stakeholders.md#gallery-visitor)

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: critical
  * status: draft

#### Relations
  * derivedFrom: [Grasp Complexity Revelation](#grasp-complexity-revelation)
---

### Multi-Geometry Prehension

As a [Gallery Visitor](../../Shared/Stakeholders.md#gallery-visitor), I want to
see the piece grasp and manipulate objects of markedly different geometry — a
sphere, a cylinder, and a flat plate — so that I see the grip itself change and
understand that grasping is not one skill but many.

#### Details
Each geometry demands a distinct prehension pattern: spherical grasp,
cylindrical wrap, and a lateral or pinch grip for the plate. Showing all three
makes the taxonomy visible; a single object would read as one trick.

#### Concept References
  * [Gallery Visitor](../../Shared/Stakeholders.md#gallery-visitor)

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft

#### Relations
  * derivedFrom: [Grasp Complexity Revelation](#grasp-complexity-revelation)
---

### Unattended Exhibition Operation

As a [Gallery Operator](../../Shared/Stakeholders.md#gallery-operator), I want to
run the piece for a whole exhibition using a simple daily routine and no
specialist knowledge, so that it can be shown without the artist present.

#### Details
Groups everything the gallery needs in order to live with the piece: that it is
safe around the public, that it performs on a daily cycle, and that starting
and stopping it is within reach of whoever opens the building.

#### Concept References
  * [Gallery Operator](../../Shared/Stakeholders.md#gallery-operator)

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft
---

### Operator Start-Stop Control

As a [Gallery Operator](../../Shared/Stakeholders.md#gallery-operator), I want to
start and stop the piece with one obvious control and no sequence to remember,
so that any member of staff can open and close the room without training.

#### Details
The people doing this are not roboticists and will be doing it in a hurry.
Starting must be a single deliberate action; stopping must bring the hand to a
safe resting state on its own, without the operator having to position anything
or unload the object by hand.

Distinct from the emergency stop, which is a safety function for abnormal
conditions. This is the ordinary daily routine, and the two should not be
confused for one another in the physical design.

#### Concept References
  * [Gallery Operator](../../Shared/Stakeholders.md#gallery-operator)

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft

#### Relations
  * derivedFrom: [Unattended Exhibition Operation](#unattended-exhibition-operation)
---

### Perpetual Scheduled Performance

As a [Gallery Operator](../../Shared/Stakeholders.md#gallery-operator), I want
the piece to perform automatically through every open hour and rest overnight
on its own schedule, so that no visitor ever finds it idle during the show and
the mechanism still gets a daily pause without me managing the transition.

#### Details
Realises the never-ending quality of the [EverydayDynamics
Mission](../../Enterprise/Mission.md#everydaydynamics-mission) within a real
gallery day. No visitor should arrive to find the piece idle, waiting to be
triggered, or mid-restart during opening hours.

The nightly downtime is deliberate and serves several ends at once: thermal and
mechanical recovery, wear and power reduction, and a defined daily point at
which the piece can be re-staged. Whether the transition into and out of rest
is concealed or shown is an open artistic question.

#### Concept References
  * [Gallery Operator](../../Shared/Stakeholders.md#gallery-operator)

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft

#### Relations
  * derivedFrom: [Unattended Exhibition Operation](#unattended-exhibition-operation)
---

### Safe Public Operation

As a [Gallery Operator](../../Shared/Stakeholders.md#gallery-operator), I want the piece to
operate safely around unsupervised members of the public, so that it can run
unattended for the duration of an exhibition.

#### Concept References
  * [Gallery Operator](../../Shared/Stakeholders.md#gallery-operator)

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * risk: high
  * status: draft

#### Relations
  * derivedFrom: [Unattended Exhibition Operation](#unattended-exhibition-operation)
---

### Venue Deployment Readiness

As a [Exhibition Venue](../../Shared/Stakeholders.md#exhibition-venue), I want
the piece to be straightforward to host as a standard exhibit, so that it does
not demand exceptional infrastructure, expertise, or support beyond what any
venue already provides.

#### Concept References
  * [Exhibition Venue](../../Shared/Stakeholders.md#exhibition-venue)

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft
---

### Guaranteed Spares And Service Response

As a [Exhibition Venue](../../Shared/Stakeholders.md#exhibition-venue), I want
a defined spares and service response commitment, so that a fault does not
leave the piece out of action for the rest of the exhibition run.

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: medium
  * status: draft

#### Relations
  * derivedFrom: [Venue Deployment Readiness](#venue-deployment-readiness)
---

### Self-Sufficient Fault Recovery

As a [Exhibition Venue](../../Shared/Stakeholders.md#exhibition-venue), I want
routine faults to be diagnosable and resolvable by venue staff without
contacting the artist, so that a show does not stall waiting for remote
support.

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: medium
  * status: draft

#### Relations
  * derivedFrom: [Venue Deployment Readiness](#venue-deployment-readiness)
---

### Standard Power Compatibility

As a [Exhibition Venue](../../Shared/Stakeholders.md#exhibition-venue), I want
the piece to run from ordinary UK/EU mains power without special electrical
infrastructure, so that it can be hosted in any standard exhibition space.

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft

#### Relations
  * derivedFrom: [Venue Deployment Readiness](#venue-deployment-readiness)
---

### Turnkey Risk Documentation

As a [Exhibition Venue](../../Shared/Stakeholders.md#exhibition-venue), I want
a ready-made risk assessment and method statement package, so that our own
health & safety sign-off does not require us to author these from scratch.

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft

#### Relations
  * derivedFrom: [Venue Deployment Readiness](#venue-deployment-readiness)
---

### Venue-Led Install And De-Install

As a [Exhibition Venue](../../Shared/Stakeholders.md#exhibition-venue), I want
our own technicians to install and de-install the piece within a normal
changeover window without specialist supervision, so that turnaround between
exhibitions is not dependent on the artist's availability.

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: high
  * status: draft

#### Relations
  * derivedFrom: [Venue Deployment Readiness](#venue-deployment-readiness)
---

### Visitor-Directed Rotation

As a [Gallery Visitor](../../Shared/Stakeholders.md#gallery-visitor), I want to
set the rotation the piece applies to the object it is holding, so that I can
direct the motion myself rather than only watch it perform.

#### Details
A distinct need from watching the reorientation happen autonomously: here the
visitor is the source of the motion command, not just its audience. How that
input is captured — trackball, dial, or otherwise — is an implementation
decision, not part of this capability.

#### Concept References
  * [Gallery Visitor](../../Shared/Stakeholders.md#gallery-visitor)

#### Metadata
  * type: capability
  * owner: EverydayDynamics
  * priority: medium
  * status: draft
---
