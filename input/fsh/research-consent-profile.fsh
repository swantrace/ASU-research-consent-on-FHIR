CodeSystem: ProvisionActionCodeSystem
Id: ASU.provision-action-code-system
Title: "Provision Action Code System"
Description: "The action of the consent."
* #reuse "Reuse"
* #recontact "Recontact"
* #test "Test"
* #treat "Treat"
* #notify "Notify"

ValueSet: ProvisionActionValueSet
Id: ASU.provision-action-value-set
Title: "Provision Action Value Set"
Description: "The action of the consent."
* include codes from system ProvisionActionCodeSystem
* include codes from system http://hl7.org/fhir/ValueSet/consent-action

CodeSystem: ExtendedResourceTypeCodeSystem
Id: ASU.extended-resource-type-code-system
Title: "Extended Resource Type Code System"
Description: "The resource type of the extended resource."
* #ResearchStudyResult "Research Study Result"

ValueSet: ExtendedResourceTypeValueSet
Id: ASU.extended-resource-type-value-set
Title: "Extended Resource Type Value Set"
Description: "The resource type of the extended resource."
* include codes from system ExtendedResourceTypeCodeSystem
* include codes from system http://hl7.org/fhir/ValueSet/resource-types

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
    reference 0..* and
    period 0..1 and
    parent 0..1
* extension[type].value[x] only CodeableConcept 
* extension[type].valueCodeableConcept from ObligationValueSet
* extension[reference].value[x] only CodeableReference
* extension[period].value[x] only Period
* extension[parent].value[x] only CodeableConcept
* extension[parent].valueCodeableConcept from ObligationValueSet

Profile:         ResearchConsent
Parent:          Consent
Id:              ASU.research-consent
Title:           "Research Consent Profile"
Description:     "A profile to participate in research protocol and information sharing required"
* extension contains ResearchSubjectReference named researchSubject 1..1
* extension contains WitnessReference named witness 0..*
* provision.extension contains ProvisionObligation named obligation 0..*
* provision.action from ProvisionActionValueSet