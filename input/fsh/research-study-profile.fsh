ValueSet: ResearchStudyRole
Id: ASU.research-study-role
Title: "Research Study Role"
Description: "Value set for roles in a research study."
* include codes from system http://hl7.org/fhir/ValueSet/research-study-party-role

Extension: OrganizationExtension
Id: ASU.organization-extension
Title: "Organization Extension"
Description: "An extension to capture information about an organization associated with the research study, similar to associatedParty."
* extension contains
    name 0..1 and
    role 1..1 and
    period 0..* and
    classifier 0..* and
    party 0..1
* extension[name].value[x] only string
* extension[role].value[x] only CodeableConcept
* extension[role].valueCodeableConcept from ResearchStudyRole
* extension[period].value[x] only Period
* extension[classifier].value[x] only CodeableConcept
* extension[party].value[x] only Reference(Practitioner or PractitionerRole or Organization)


Extension: StudyTeamContactInformation
Id: ASU.study-team-contact-information
Title: "Study Team Contact Information Extension"
Description: "An extension that indicates the contact information for the study team."
* value[x] only ContactDetail

Extension: ResearchStudyProjectDuration
Id: ASU.research-study-project-duration
Title: "Research Study Project Duration Extension"
Description: "An extension that describes the duration of the research study."
* value[x] only CodeableConcept

Extension: ResearchStudyProcedures
Id: ASU.research-study-procedures
Title: "Research Study Procedures Extension"
Description: "An extension that describes the procedures that will be performed on participants in the research study."
* value[x] only CodeableReference

Extension: ResearchStudyConfidentiality
Id: ASU.research-study-confidentiality
Title: "Research Study Confidentiality Extension"
Description: "An extension that indicates the confidentiality of the research study."
* value[x] only CodeableReference

Extension: ResearchStudyCompensation
Id: ASU.research-study-compensation
Title: "Research Study Compensation Extension"
Description: "An extension that indicates the amount and type of compensation offered to the participants in a research study."
* value[x] only CodeableReference

Extension: ResearchStudyCost
Id: ASU.research-study-cost
Title: "Research Study Cost Extension"
Description: "An extension that indicates the estimated or actual cost of conducting a research study."
* value[x] only CodeableReference

Extension: ResearchStudyBenefits
Id: ASU.research-study-benefits
Title: "Research Study Benefits Extension"
Description: "An extension that describes the potential benefits participants might receive by participating in the research study."
* value[x] only CodeableReference

Extension: ResearchStudyRisks
Id: ASU.research-study-risks
Title: "Research Study Risks Extension"
Description: "An extension that describes any potential risks or adverse effects participants might face by participating in the research study."
* value[x] only CodeableReference

Extension: ResearchStudyAlternativeProcedures
Id: ASU.research-study-alternative-procedures
Title: "Research Study Alternative Procedures Extension"
Description: "An extension that describes the alternative procedures that will be performed on participants in the research study."
* value[x] only CodeableReference

Extension: ResearchStudyWithdraw
Id: ASU.research-study-withdraw
Title: "Research Study Withdraw Extension"
Description: "An extension that describes the procedures for withdrawing from the research study."
* value[x] only CodeableReference

Extension: ResearchStudyParticipantTermination
Id: ASU.research-study-participant-termination
Title: "Research Study Participant Termination Extension"
Description: "An extension that describes the procedures for terminating a participant from the research study."
* value[x] only CodeableReference

Profile: ResearchStudyWithConsent
Parent: ResearchStudy
Id: ASU.research-study-with-consent
Title: "Research Study with Consent Profile"
Description: "This profile defines the minimum required information for a Research Study with Consent."

* identifier 1..* MS
* objective 1..* MS
* description 1..1 MS
* extension contains OrganizationExtension named organization 1..* MS
* extension contains StudyTeamContactInformation named teamContact 1..* MS
* extension contains ResearchStudyConfidentiality named confidentiality 1..* MS
* extension contains ResearchStudyCompensation named compensation 1..* MS
* extension contains ResearchStudyCost named cost 1..* MS
* extension contains ResearchStudyBenefits named benefits 1..* MS
* extension contains ResearchStudyRisks named risks 1..* MS
* extension contains ResearchStudyProcedures named procedures 1..* MS
* extension contains ResearchStudyAlternativeProcedures named alternativeProcedures 1..* MS
* extension contains ResearchStudyWithdraw named withdraw 1..* MS
* extension contains ResearchStudyParticipantTermination named participantTermination 1..* MS
* extension contains ResearchStudyProjectDuration named projectDuration 1..1 MS
* associatedParty ^short = "Prefer using the 'organization' extension."
* associatedParty ^comment = "This element is traditionally used for associated parties, but it is recommended to use the 'organization' extension in this profile."