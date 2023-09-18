Instance: sample-questionnaire-response
InstanceOf: QuestionnaireResponse
Description: "Sample Treatment Consent Questionnaire Response."


* questionnaire = "https://github.com/mojitoj/ASU-FHIR-consent-validation/StructureDefinition/sample-questionnaire"
* status = #completed



* item[0].linkId = "practitioner"
* item[0].answer.valueReference = Reference(sample-practitioner)

* item[1].linkId = "procedures"
* item[1].answer.valueCoding = $SCT#72641008 "Administration of Sedative"

* item[2].linkId = "organization"
* item[2].answer.valueReference = Reference(sample-organization)

* item[3].linkId = "Patient"
* item[3].answer.valueReference = Reference(sample-patient)

* item[4].linkId = "dateTime"
* item[4].answer.valueDateTime = "2023-07-27T22:24:10.2112Z"

* item[5].linkId = "grantor"
* item[5].answer.valueReference = Reference(sample-related-person)

* item[6].linkId = "provider"
* item[6].answer.valueReference = Reference(sample-practitioner)

* item[7].linkId = "administrator"
* item[7].answer.valueReference = Reference(sample-related-person)

