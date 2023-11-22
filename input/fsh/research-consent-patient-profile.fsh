Profile:        ResearchConsentPatient
Parent:         Patient
Id:             ASU.research-consent-patient
Title:          "Research Consent Patient Profile"
Description:    "A profile of the Patient resource for modeling research consent patients"
* telecom obeys research-consent-patient-requirement

Invariant: research-consent-patient-requirement
Description: "A patient must have at least an email or phone number"
Expression: "telecom.where(system='email').exists() or telecom.where(system='phone').exists()"
Severity: #error