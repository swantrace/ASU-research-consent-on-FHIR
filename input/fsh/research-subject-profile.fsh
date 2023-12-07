Extension: ResearchSubjectWithConsentStudyId
Id: ASU.research-subject-with-consent-study-id
Title: "Research Subject with Consent Study Id"
Description: "Research Subject with Consent Study Id"
* value[x] only string

Profile: ResearchSubjectWithConsent
Parent: ResearchSubject
Id: ASU.research-subject-with-consent
Title: "Research Subject with Consent Profile"
Description: "Research Subject with Consent Profile"
* study only Reference(ResearchStudyWithConsent)
* consent only Reference(ResearchConsent)
* extension contains ResearchSubjectWithConsentStudyId named studyId 1..1