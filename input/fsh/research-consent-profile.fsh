Profile: ConsentWitness
Parent: Extension
Id: ASU.consent-witness
Title: "Consent Witness Extension"
Description: "An extension to add a witness property of which cardinality is 0..1 Reference(Patient) to consent resource"
* url = "https://hl7.org/fhir/extensions/StructureDefinition-consent-Witness.html"

Extension: ConsentResearchStudy
Id: ASU.consent-research-study
Title: "Consent Research Study Extension"
Description: "An extension to add a research study property of which cardinality is 1..1 Reference(ResearchStudyWithConsent) to consent resource"
* extension contains 
  studyId 1..1 MS and
  study 1..1 MS
* extension[studyId].value[x] only string // Assuming studyId is an integer
* extension[study].value[x] only Reference(ResearchStudyWithConsent) // Reference to a ResearchStudy resource

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

ValueSet: CombinedConsentAndSecurityValueSet
Id: combined-consent-and-security-valueset
Title: "Combined Consent Content and Security Label Value Set"
* include codes from valueset http://hl7.org/fhir/ValueSet/security-label-event-examples
* include codes from valueset http://hl7.org/fhir/ValueSet/consent-content-code
* include codes from valueset http://hl7.org/fhir/ValueSet/contact-point-system

Profile:         ResearchConsent
Parent:          Consent
Id:              ASU.research-consent
Title:           "Research Consent Profile"
Description:     "A profile to participate in research protocol and information sharing required"
* subject only Reference(ResearchConsentPatient)
* subject 1..1
* grantor ^alias[0] = "investigator"
* grantor ^alias[+] = "consenter"
* provision.code from CombinedConsentAndSecurityValueSet (required)
* provision.data.reference only Reference(ResearchConsentSpecimen|Observation)
* extension contains ConsentWitness named witness 0..*
* extension contains ConsentResearchStudy named researchStudy 1..*
* extension contains ConsentSpecimen named specimen 0..*
* extension contains ConsentObservation named observation 0..*
* extension contains SampleUsageLimitation named sampleUsageLimitation 0..*
* extension contains PrivacyProtection named privacyProtection 0..*
* extension contains ResultNotification named resultNotification 0..*