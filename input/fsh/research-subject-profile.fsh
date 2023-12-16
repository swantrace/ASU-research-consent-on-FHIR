Extension: ResearchSubjectParticipantId
Id: ASU.research-subject-participant-id
Title: "Research Subject Participant Id"
Description: "Research Subject Participant Id"
* value[x] only string

Profile: ResearchSubjectWithConsent
Parent: ResearchSubject
Id: ASU.research-subject-with-consent
Title: "Research Subject with Consent Profile"
Description: "Research Subject with Consent Profile"
* study only Reference(ResearchStudy)
* consent only Reference(ResearchConsent)
* extension contains ResearchSubjectParticipantId named participantId 0..1