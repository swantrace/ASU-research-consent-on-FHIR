Profile: ConsentWitness
Parent: Extension
Id: ASU.consent-witness
Title: "Consent Witness Extension"
Description: "An extension to add a witness property of which cardinality is 0..1 Reference(Patient) to consent resource"
* url = "https://hl7.org/fhir/extensions/StructureDefinition-consent-Witness.html"

Profile: ConsentResearchStudy
Parent: Extension
Id: ASU.consent-research-study
Title: "Consent Research Study Extension"
Description: "An extension to add a research study property of which cardinality is 0..1 Reference(ResearchStudy) to consent resource"
* url = "https://hl7.org/fhir/extensions/StructureDefinition-consent-ResearchStudyContext.html"

Extension: ConsentSpecimen
Id: ASU.consent-specimen
Title: "Consent to Specimen Link"
Description: "Links the Consent resource to one or more Specimen resources."
* value[x] only Reference
* valueReference only Reference(ResearchConsentSpecimen)

Extension: ConsentObservation
Id: ASU.consent-observation
Title: "Consent to Observation Link"
Description: "Links the Consent resource to one or more Observation resources."
* value[x] only Reference
* valueReference only Reference(Observation)

Extension: SampleUsageLimitation
Id: ASU.sample-usage-limitation
Title: "Sample Usage Limitation"
Description: "Details about the limitation on the usage of the sample."
* value[x] only string

Extension: PrivacyProtection
Id: privacy-protection
Title: "Privacy Protection Measures"
Description: "Details on the measures taken to ensure privacy protection."
* value[x] only string

Extension: ResultNotification
Id: result-notification
Title: "Notification Details for Results"
Description: "Details about how and when results will be notified."
* value[x] only string

Profile:         ResearchConsent
Parent:          Consent
Id:              ASU.research-consent
Title:           "Research Consent Profile"
Description:     "A profile to participate in research protocol and information sharing required"
* grantee 1..*
* subject only Reference(ResearchConsentPatient)
* subject 1..1
* date 1..1
* grantor ^alias[0] = "investigator"
* grantor ^alias[+] = "consenter"
* extension contains ConsentWitness named witness 0..*
* extension contains ConsentResearchStudy named researchStudy 1..*
* extension contains ConsentSpecimen named specimen 0..*
* extension contains ConsentObservation named observation 0..*
* extension contains SampleUsageLimitation named sampleUsageLimitation 0..*
* extension contains PrivacyProtection named privacyProtection 0..*
* extension contains ResultNotification named resultNotification 0..*