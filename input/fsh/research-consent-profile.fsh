CodeSystem: ProvisionActionCodeSystem
Id: ASU.provision-action-code-system
Title: "Provision Action Code System"
Description: "The action of the consent."
* #use-specimen "Use Specimen"
* #reuse-specimen "Reuse Specimen"
* #collect-specimen "Collect Specimen"
* #recontact-participant "Recontact Participant"
* #test-specimen "Test Specimen"
* #treat "Treat"
* #notify-result "Notify Result"

ValueSet: ProvisionActionValueSet
Id: ASU.provision-action-value-set
Title: "Provision Action Value Set"
Description: "The action of the consent."
* include codes from system ProvisionActionCodeSystem
* include codes from system http://hl7.org/fhir/ValueSet/consent-action

Extension: ResearchSubjectReference
Id: ASU.research-subject-reference
Title: "Research Subject Reference"
Description: "A reference to a ResearchSubject resource."
* value[x] only Reference(ResearchSubjectWithConsent)

Extension: WitnessReference
Id: ASU.witness-reference
Title: "Witness Reference"
Description: "A reference to witness."
* value[x] only Reference(Organization or Patient or Practitioner or RelatedPerson)

CodeSystem: ObligationCodeSystem
Id: ASU.obligation-code-system
Title: "Obligation Code System"
Description: "The obligation of the consent."
* #sampleUsageLimitation "Sample Usage Limitation"
* #studyResultSharing "Study Result Sharing"
* #participantDisenrollment "Participant Disenrollment"
* #informationConfidentiality "Information Confidentiality"
* #informationDeidentification "Information Deidentification"

ValueSet: ObligationValueSet
Id: ASU.obligation-value-set
Title: "Obligation Value Set"
Description: "The obligation of the consent."
* include codes from system ObligationCodeSystem

Extension: ProvisionObligation
Id: ASU.provision-obligation
Title: "Provision Obligation"
Description: "The obligation of the consent."
* extension contains 
    type 1..1 and
    reference 0..* 
* extension[type].value[x] only CodeableConcept 
* extension[type].valueCodeableConcept from ObligationValueSet
* extension[reference].value[x] only CodeableReference

Extension: ProvisionActionPurpose
Id: ASU.provision-action-purpose
Title: "Provision Action Purpose"
Description: "The purpose of the action."
* value[x] only CodeableReference

Extension: RecontactMethod
Id: ASU.recontact-method
Title: "Recontact method"
Description: "Recontact method"
* value[x] only CodeableConcept
* valueCodeableConcept from $CONTACT-METHOD

Profile:         ResearchConsent
Parent:          Consent
Id:              ASU.research-consent
Title:           "Research Consent Profile"
Description:     "A profile to participate in research protocol and information sharing required"
* date 1..1 MS
* extension contains ResearchSubjectReference named researchSubject 1..1 MS
* extension contains WitnessReference named witness 0..*
* extension contains ProvisionObligation named obligation 0..*
* provision.extension contains ProvisionActionPurpose named actionPurpose 0..*
* provision.extension contains RecontactMethod named recontactMethod 0..*
* provision.action from ProvisionActionValueSet