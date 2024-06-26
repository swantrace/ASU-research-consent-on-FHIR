CodeSystem: ProvisionActionCodeSystem
Id: provision-action-code-system
Title: "Provision Action Code System"
Description: "The action of the consent."
* #procedure "Procedure"
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
Id: provision-action-value-set
Title: "Provision Action Value Set"
Description: "The action of the consent."
* include codes from system ProvisionActionCodeSystem
* include codes from system http://hl7.org/fhir/ValueSet/consent-action

Invariant: provision-action-unique-commercial-profit
Description: "The code 'commercial-profit' must appear at most once in the provision.action element."
Severity: #error
Expression: "provision.action.where(code='commercial-profit').count() <= 1"

Extension: ResearchSubjectReference
Id: research-subject-reference
Title: "Research Subject Reference"
Description: "A reference to a ResearchSubject resource."
* value[x] only Reference(ResearchSubjectWithConsent)

Extension: WitnessReference
Id: witness-reference
Title: "Witness Reference"
Description: "A reference to witness."
* value[x] only Reference(Organization or Patient or Practitioner or RelatedPerson)

CodeSystem: ObligationCodeSystem
Id: obligation-code-system
Title: "Obligation Code System"
Description: "The obligation of the consent."
* #sample-usage-limitation "Sample Usage Limitation"
* #result-sharing-after-study "After study, result sharing"
* #result-sharing-during-study "During study, result sharing"
* #participant-disenrollment "Participant Disenrollment"
* #information-confidentiality "Information Confidentiality"
* #information-deidentification "Information Deidentification"
* #legal-foundation-or-authority "Certification (or) Regulatory compliance (or) Legal basis"
* #commerical-profit-sharing "Commercial Profit Sharing"
* #injury-risk "Injury Risk"
* #injury-compensation "Injury Compensation"
* #injury-treatment "Injury Treatment"

ValueSet: ObligationValueSet
Id: obligation-value-set
Title: "Obligation Value Set"
Description: "The obligation of the consent."
* include codes from system ObligationCodeSystem

Invariant: provision-obligation-reference-coding
Severity: #error
Description: "The code 'result-sharing-after-study', 'result-sharing-during-study', 'commerical-profit-sharing', 'injury-treatment', 'injury-risk', and 'injury-compensation' must have a reference and the data type of extension('reference') should be Coding."
Expression: "extension('type').value.coding.code in {'result-sharing-after-study', 'result-sharing-during-study', 'commerical-profit-sharing', 'injury-treatment', 'injury-risk', 'injury-compensation'} implies extension('reference').value is Coding"

Invariant: provision-obligation-distinct-codes
Description: "The code 'result-sharing-after-study', 'result-sharing-during-study', 'commerical-profit-sharing', 'injury-treatment', 'injury-risk', and 'injury-compensation' must appear at most once in the provision.obligation element."
Severity: #error
Expression: "extension('type').value.coding.where(code in {'result-sharing-after-study', 'result-sharing-during-study', 'commerical-profit-sharing', 'injury-treatment', 'injury-risk', 'injury-compensation'}).isDistinct()"

Invariant: provision-obligation-reference-limit
Severity: #error
Description: "The reference should be limited to 0..1 when the code is 'result-sharing-after-study', 'result-sharing-during-study', 'commerical-profit-sharing', 'injury-treatment', 'injury-risk', or 'injury-compensation'."
Expression: "extension('type').value.coding.code in {'result-sharing-after-study', 'result-sharing-during-study', 'commerical-profit-sharing', 'injury-treatment', 'injury-risk', 'injury-compensation'} implies (extension('reference').count() <= 1)"


Extension: ProvisionObligation
Id: provision-obligation
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
* obeys provision-obligation-reference-coding
* obeys provision-obligation-distinct-codes
* obeys provision-obligation-reference-limit

Extension: ProvisionPurposeNote
Id: provision-purpose-note
Title: "Provision Action Purpose"
Description: "The purpose of the action."
* value[x] only CodeableReference

Extension: RecontactMethod
Id: recontact-method
Title: "Recontact method"
Description: "Recontact method"
* value[x] only CodeableConcept
* valueCodeableConcept from $CONTACT-METHOD

Profile:         ResearchConsent
Parent:          Consent
Id:              research-consent
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