Instance: sample-related-person
InstanceOf: RelatedPerson
Description: "Sample RelatedPerson."
* patient = Reference(sample-patient)
* name
  * given[0] = "Jeff"
  * family = "Smith"