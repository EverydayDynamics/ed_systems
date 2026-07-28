# Elements

### GRP Manipulation Kinematics Ontology

Structural vocabulary for the rotational axes involved in in-hand object reorientation and the operational speed limits that apply to them.

#### Ontology
```turtle
@prefix grpk: <https://everydaydynamics.art/ontology/grp-manipulation-kinematics#> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://everydaydynamics.art/ontology/grp-manipulation-kinematics> a owl:Ontology ;
  rdfs:label "GRP Manipulation Kinematics" .

grpk:ManipulationAxis a owl:Class ;
  rdfs:comment "A rotational degree of freedom of the manipulating end effector through which in-hand reorientation is performed." .

grpk:operationalAngularVelocityLimit a owl:DatatypeProperty ;
  rdfs:domain grpk:ManipulationAxis ;
  rdfs:range xsd:decimal ;
  rdfs:comment "Maximum commanded angular velocity, in degrees per second, permitted for the axis during normal in-hand reorientation performance." .

grpk:primaryManipulationAxis a owl:NamedIndividual, grpk:ManipulationAxis ;
  rdfs:comment "The primary rotational axis driving in-hand object reorientation. Operational angular velocity limit value TBD pending hardware characterization." .

grpk:secondaryManipulationAxis a owl:NamedIndividual, grpk:ManipulationAxis ;
  rdfs:comment "The secondary rotational axis driving in-hand object reorientation. Operational angular velocity limit value TBD pending hardware characterization." .
```

#### Metadata
  * type: ontology
  * ontology_base: https://everydaydynamics.art/ontology/grp-manipulation-kinematics
  * ontology_prefix: grpk
