Extension: SpecimenDestructionPeriod
Id: ASU.specimen-destruction-period
Title: "Specimen Destruction Period"
Description: "Time period after which the specimen should be destroyed."
* value[x] only Period

Extension: SpecimenRetentionLimit
Id: ASU.specimen-retention-limit
Title: "Specimen Retention Limit"
Description: "Time limit for how long the specimen should be retained."
* value[x] only Period

Extension: DeIdentifyingSpecimens
Id: ASU.de-identifying-specimens
Title: "De-identifying Measures for Specimens"
Description: "Methods or measures applied to de-identify the specimens."
* value[x] only string

Profile: ResearchConsentSpecimen
Parent: Specimen
Id: ASU.research-consent-specimen
Title: "Extended Specimen Profile with Additional Fields"
Description: "An extended version of the Specimen resource with additional fields."
* extension contains SpecimenDestructionPeriod named specimenDestructionPeriod 0..1
* extension contains SpecimenRetentionLimit named specimenRetentionLimit 0..1
* extension contains DeIdentifyingSpecimens named deIdentifyingSpecimens 0..1

