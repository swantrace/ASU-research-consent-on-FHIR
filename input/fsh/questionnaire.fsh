Instance: sample-questionnaire
InstanceOf: Questionnaire
Description: "Sample Treatment Consent Questionnaire."


* name = "Sample Organization"
* title = "Sample Organization"
* status = #active
* code = $LOINC#59284-0 "Consent Document"


* item[0].linkId = "practitioner"
* item[0].text = "I, the undersign here, authorize the following practitioner (and their designated assistants)"
* item[0].type = #reference
* item[0].definition = "https://github.com/mojitoj/ASU-FHIR-consent-validation/StructureDefinition/ASU.treatment-consent#Consent.grantee"

* item[1].linkId = "procedures"
* item[1].text = "to administer such treatments as are necessary, and to perform the following procedures"
* item[1].type = #coding
* item[1].definition = "https://github.com/mojitoj/ASU-FHIR-consent-validation/StructureDefinition/ASU.treatment-consent#Consent.provision.code"

* item[2].linkId = "organization"
* item[2].text = "Organization"
* item[2].type = #reference
* item[2].definition = "https://github.com/mojitoj/ASU-FHIR-consent-validation/StructureDefinition/ASU.treatment-consent#Consent.controller"

* item[3].linkId = "Patient"
* item[3].text = "Patient name"
* item[3].type = #reference
* item[3].definition = "https://github.com/mojitoj/ASU-FHIR-consent-validation/StructureDefinition/ASU.treatment-consent#Consent.subject"

* item[4].linkId = "dateTime"
* item[4].text = "The consent is effective on"
* item[4].type = #dateTime
* item[4].definition = "https://github.com/mojitoj/ASU-FHIR-consent-validation/StructureDefinition/ASU.treatment-consent#Consent.date"

* item[5].linkId = "grantor"
* item[5].text = "Legal authorizer of consent"
* item[5].type = #reference
* item[5].definition = "https://github.com/mojitoj/ASU-FHIR-consent-validation/StructureDefinition/ASU.treatment-consent#Consent.grantor"

* item[6].linkId = "administrator"
* item[6].text = "I, the undersign here, have been explained all the benefits and possible complications of the procedure"
* item[6].type = #reference

* item[7].linkId = "translator"
* item[7].text = "Individual who helped explain/translate the document"
* item[7].type = #reference

* item[8].linkId = "witness"
* item[8].text = "Individual who provided witness to the execution of the consent"
* item[8].type = #reference
