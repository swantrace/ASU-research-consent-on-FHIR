Invariant: research-consent-patient-requirement
Description: "A patient must have at least an email or phone number"
Expression: "telecom.where(system='email').exists() or telecom.where(system='phone').exists()"
Severity: #error

Extension:      ResearchConsentPatientResearchSubject
Id:             ASU.research-consent-patient-research-subject
Title:          "Research Consent Patient Research Subject"
Description:    "A research subject with consent"
* value[x] only Reference(ResearchSubjectWithConsent)


Profile:        ResearchConsentPatient
Parent:         Patient
Id:             ASU.research-consent-patient
Title:          "Research Consent Patient Profile"
Description:    "A profile of the Patient resource for modeling research consent patients"
* telecom obeys research-consent-patient-requirement
* extension contains ResearchConsentPatientResearchSubject named researchSubject 1..1


