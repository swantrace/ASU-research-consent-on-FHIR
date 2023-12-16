Extension: StudyTeamContactInformation
Id: ASU.study-team-contact-information
Title: "Study Team Contact Information Extension"
Description: "An extension that indicates the contact information for the study team."
* value[x] only ContactDetail

Extension: ResearchStudyConfidentiality
Id: ASU.research-study-confidentiality
Title: "Research Study Confidentiality Extension"
Description: "An extension that indicates the confidentiality of the research study."
* value[x] only CodeableConcept

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

Extension: ResearchStudyProcedures
Id: ASU.research-study-procedures
Title: "Research Study Procedures Extension"
Description: "An extension that describes the procedures that will be performed on participants in the research study."
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

* extension contains StudyTeamContactInformation named contact 1..1
* extension contains ResearchStudyConfidentiality named confidentiality 0..*
* extension contains ResearchStudyCompensation named compensation 0..*
* extension contains ResearchStudyCost named cost 0..*
* extension contains ResearchStudyBenefits named benefits 0..*
* extension contains ResearchStudyRisks named risks 0..*
* extension contains ResearchStudyProcedures named procedures 0..*
* extension contains ResearchStudyAlternativeProcedures named alternativeProcedures 0..*
* extension contains ResearchStudyWithdraw named withdraw 0..*
* extension contains ResearchStudyParticipantTermination named participantTermination 0..*