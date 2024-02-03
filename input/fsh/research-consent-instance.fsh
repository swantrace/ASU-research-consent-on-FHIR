Instance: sample-research-consent
InstanceOf: ASU.research-consent
Description: "A consent for a research study."

* status = #active
* grantor[0] = Reference(sample-patient)
* grantee[0] = Reference(sample-organization)
* date = "2017-01-01"

* provision[0].action = #recontact-participant
* provision[0].extension[actionPurpose][0].valueCodeableReference.concept.text = """
If you choose to be in this study, we would like to contact you in the future to let you know about new opportunities to take part in future studies. If you choose not to be contacted in the future about other studies, you can still take part in this study. By checking yes and writing your initials below, you permit the researchers to contact you in the future to let you know about other studies.
"""

* provision[1].action = #access
* provision[1].resourceType = #Observation
* provision[1].code[0] = $SCT#887031000000108 "Consent for information sharing"
* provision[1].code[1] = $LOINC#LP14443-3 "CD4"
* provision[1].code[2] = $LOINC#48511-0 "HIV viral load"
* provision[1].extension[actionPurpose][0].valueCodeableReference.concept.text = """
The purpose of completing these forms is to allow study staff to access your medical records at this hospital system and various clinics and agencies in the community.
"""
* provision[2].action = #collect-specimen
* provision[2].code[0] = $SPECIMEN-TYPE#BLD

* provision[3].action = #treat
* provision[3].resourceType = #Patient

* provision[4].action = #test-specimen
* provision[4].code[0] = $LOINC#LP14443-3 "CD4"
* provision[4].code[1] = $LOINC#48511-0 "HIV viral load"
* provision[4].code[2] = $SCT#273426006 "Drug abuse screening test"
* provision[4].code[3] = $SCT#1820004 "Ethanol measurement"

* provision[5].action = #use-specimen
* provision[5].extension[actionPurpose][0].valueCodeableReference.concept.text = """
You permit the researchers to record your session and use it for their research. Again, if you choose not to have the sessions recorded you may still take part in the study.
"""

* extension[witness][0].valueReference = Reference(sample-witness) 
* extension[researchSubject].valueReference = Reference(sample-researchsubject)
* extension[obligation][0].extension[type][0].valueCodeableConcept.coding[0] = #studyResultSharing
* extension[obligation][0].extension[reference][0].valueCodeableReference.concept.text = """
A description of this clinical trial will be available on http://www.ClinicalTrials.gov, as required by U.S. law. This Web site will not include information that can identify you. At most, the Web site will include a summary of the results. You can search this Web site at any time. Additionally, data from this study will be available to researchers on another Web site, www.clinicaldatashare.com after the study is complete and the data are analyzed. This Web site will not include information that can identify you. You can view this Web site at any time.
"""

* extension[obligation][1].extension[type][0].valueCodeableConcept.coding[0] = #participantDisenrollment
* extension[obligation][1].extension[reference][0].valueCodeableReference.concept.text = """
Taking part in this study is up to you. You may decide not to take part or you may leave the study at any time. Your decision will not result in any penalty or loss of benefits to which you are entitled. If you withdraw your consent for this study at any time, no further contact will be made. You may be withdrawn from the study by the investigator or sponsor at any time without your consent for various reasons. Reasons may include, but not be limited to, the study seeming to be harmful to you; you being unable to follow study procedures; or you being unable to keep study appointments. During the course of the study, we will inform you of any new findings that may affect your desire to continue in the study.
"""

* extension[obligation][2].extension[type][0].valueCodeableConcept.coding[0] = #informationDeidentification
* extension[obligation][2].extension[reference][0].valueCodeableReference.concept.text = """
Recordings will be indentified by number only. Your name will not be noted by the study staff or reviewer on any recordings
"""

* extension[obligation][3].extension[type][0].valueCodeableConcept.coding[0] = #sampleUsageLimitation
* extension[obligation][3].extension[reference][0].valueCodeableReference.concept.text = """
Only study staff will have access to them. Study records (including audio recordings) will be stored for at least six years.
"""

* extension[obligation][4].extension[type][0].valueCodeableConcept.coding[0] = #informationConfidentiality
* extension[obligation][4].extension[reference][0].valueCodeableReference.concept.text = """
The researchers will use the Certificate to protect against any demands for information that would identify you. However, if we learn about abuse of a child or elderly person or that you intend to harm yourself or someone else, or about certain communicable diseases, we will report that to the proper authorities.
"""