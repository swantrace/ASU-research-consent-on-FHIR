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
* #share-result "Notify Result or Share"
* #access-during-study "During study, data or specimen access"
* #access-after-study "After study, data or specimen access"
* #commercial-profit "Commercial Profit"

ValueSet: ProvisionActionValueSet
Id: ASU.provision-action-value-set
Title: "Provision Action Value Set"
Description: "The action of the consent."
* include codes from system ProvisionActionCodeSystem
* include codes from system http://hl7.org/fhir/ValueSet/consent-action

Invariant: provision-action-unique-commercial-profit
Description: "The code 'commercial-profit' must appear at most once in the provision.action element."
Severity: #error
Expression: "provision.action.where(code='commercial-profit').count() <= 1"

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
* #studyResultSharingAfterStudy "After study, result sharing"
* #studyResultSharingDuringStudy "During study, result sharing"
* #participantDisenrollment "Participant Disenrollment"
* #informationDeidentification "Information Deidentification"
* #legalFoundationOrAuthority "Certification (or) Regulatory compliance (or) Legal basis"
* #commercialProfitSharing "Commercial Profit Sharing"
* #injuryRisk "Injury Risk"
* #injuryCompensation "Injury Compensation"
* #injuryTreatment "Injury Treatment"

ValueSet: ObligationValueSet
Id: ASU.obligation-value-set
Title: "Obligation Value Set"
Description: "The obligation of the consent."
* include codes from system ObligationCodeSystem

Invariant: provision-obligation-injury-related-type
Severity: #error
Description: "The code 'injuryTreatment', 'injuryRisk', 'injuryCompensation' must have a reference and the data type of extension('reference') should be Coding."
Expression: "extension('type').value.coding.code in {'injuryTreatment', 'injuryRisk', 'injuryCompensation'} implies extension('reference').value is Coding"

Invariant: provision-obligation-unique-injury-related
Description: "The code 'injuryTreatment', 'injuryRisk', 'injuryCompensation' must appear at most once in the provision.obligation element."
Severity: #error
Expression: "extension('type').value.coding.where(code in {'injuryTreatment', 'injuryRisk', 'injuryCompensation'}).isDistinct()"


Extension: ProvisionObligation
Id: ASU.provision-obligation
Title: "Consent Obligation"
Description: "The obligation of the provision."
* extension contains 
    type 1..1 and
    reference 0..* and
    period 0..1 
* extension[type].value[x] only Coding 
* extension[type].valueCoding.code from ObligationValueSet
* extension[reference].value[x] only CodeableReference or Coding
* extension[reference].valueCoding.system = $YES-NO
* extension[period].value[x] only Period
* obeys provision-obligation-injury-related-type
* obeys provision-obligation-unique-injury-related

Extension: ProvisionPurposeNote
Id: ASU.provision-purpose-note
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
* provision.extension contains ProvisionPurposeNote named purposeNote 0..*
* provision.extension contains RecontactMethod named recontactMethod 0..*
* provision.extension contains ProvisionObligation named obligation 0..*
* provision.action from ProvisionActionValueSet
* provision.action obeys provision-action-unique-commercial-profit