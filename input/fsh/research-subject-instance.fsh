Instance: example-researchsubject
InstanceOf: research-subject-with-consent
Description: "Example ResearchSubject with consent"

* status = #active
* study = Reference(sample-researchstudy)
* consent = Reference(sample-research-consent)
* subject = Reference(sample-patient)