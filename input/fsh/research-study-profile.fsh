ValueSet: ResearchStudyRole
Id: ASU.research-study-role
Title: "Research Study Role"
Description: "Value set for roles in a research study."
* include codes from system http://hl7.org/fhir/ValueSet/research-study-party-role

Extension: StudyTeamContactInformation
Id: ASU.study-team-contact-information
Title: "Study Team Contact Information Extension"
Description: "An extension that indicates the contact information for the study team."
* value[x] only ContactDetail

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
