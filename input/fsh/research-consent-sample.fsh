Instance: treatment-consent-sample
InstanceOf: ASU.treatment-consent
Description: "A generic consent template that authorizes a set of treatment."

* status = #draft
* subject = Reference(sample-patient)
* grantor = Reference(sample-related-person)
* grantee = Reference(sample-practitioner)
* controller = Reference(sample-organization)
* date = 2023-03-06
* period.start = 2023-03-06
* period.end = 2024-03-06

* provision.period.start = 2023-03-06
* provision.period.end = 2025-03-06
* provision.actor[0].reference = Reference(sample-practitioner)
* provision.code[0] = $SCT#1157107003 "Administration of SARS-CoV-2 non-replicating viral vector vaccine"
* provision.code[1] = $SCT#1157108008 "Administration of second dose SARS-CoV-2 non-replicating viral vector vaccine"
