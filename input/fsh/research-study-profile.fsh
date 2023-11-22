Alias: $ASUHIT = https://asu.edu

ValueSet: ParticipantRightsValueSet
Id: ASU.participant-rights-value-set
Title: "Participant Rights Value Set"
Description: "A value set that defines the possible rights of the participants in a research study, such as informed consent, withdrawal, privacy, etc."
* $ASUHIT#INFR "informed about research"
* $ASUHIT#PURP "informed about purpose"
* $ASUHIT#PROC "informed about procedures"
* $ASUHIT#EXPT "informed about experimental part"
* $ASUHIT#RISK "informed about risks and benefits"
* $ASUHIT#OPTN "informed about other options"
* $ASUHIT#PRIV "privacy protected"
* $ASUHIT#WDRL "withdrawal allowed"
* $ASUHIT#DISC "discussion encouraged"
* $ASUHIT#COPY "copy of consent form provided"

Extension: ParticipantRights
Id: ASU.participant-rights
Title: "Participant Rights Extension"
Description: "An extension that indicates the rights of the participants in a research study, such as informed consent, withdrawal, privacy, etc."
* value[x] only CodeableConcept
* valueCodeableConcept from ParticipantRightsValueSet (required)

Extension: Compensation
Id: ASU.compensation
Title: "Compensation Extension"
Description: "An extension that indicates the amount and type of compensation offered to the participants in a research study."
* value[x] only Money or Quantity

Extension: Cost
Id: ASU.cost
Title: "Cost Extension"
Description: "An extension that indicates the estimated or actual cost of conducting a research study."
* value[x] only Money

Extension: Benefits
Id: ASU.benefits
Title: "Benefits Extension"
Description: "An extension that describes the potential benefits participants might receive by participating in the research study."
* value[x] only string

Extension: Risks
Id: ASU.risks
Title: "Risks Extension"
Description: "An extension that describes any potential risks or adverse effects participants might face by participating in the research study."
* value[x] only string

Profile: ResearchStudyWithConsent
Parent: ResearchStudy
Id: ASU.research-study-with-consent
Title: "Research Study with Consent Profile"
Description: "This profile defines the minimum required information for a Research Study with Consent."
* associatedParty ^alias = "organizations"
* associatedParty.period.start 1..1
* associatedParty.period.start ^alias = "project_start_date"
* associatedParty.period.end 1..1
* associatedParty.period.end ^alias = "project_end_date"
* title 1..1
* status 1..1
* recruitment.actualNumber 1..1
* primaryPurposeType ^alias = "study_procedures"
* description ^alias[0] = "project_description"
* description ^alias[+] = "project_details"
* result ^alias = "study_result"
* objective ^alias = "study_goal"
* phase ^alias = "study_phase"
* region ^alias = "study_place"
* status ^alias = "study_status"
* progressStatus ^alias = "study_withdraw"
* whyStopped ^alias = "participant_termination"
* extension contains ParticipantRights named participantRights 0..*
* extension contains Compensation named compensation 0..1
* extension contains Cost named cost 0..1
* extension contains Benefits named benefits 0..1
* extension contains Risks named risks 0..1