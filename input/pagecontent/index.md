# ASU FHIR Research Consent 

The goal of this project to model consents for clinical trials using the FHIR Consent resource.

## Sample Research Consent

```json
{
  "resourceType": "Consent",
  "id": "sample-research-consent",
  "meta": {
    "profile": [
      "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.research-consent"
    ]
  },
  "extension": [
    {
      "url": "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.research-subject-reference",
      "valueReference": {
        "reference": "sample-researchsubject"
      }
    },
    {
      "url": "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.witness-reference",
      "valueReference": {
        "reference": "RelatedPerson/sample-witness"
      }
    },
    {
      "extension": [
        {
          "url": "type",
          "valueCodeableConcept": {
            "coding": [
              {
                "code": "studyResultSharing"
              }
            ]
          }
        },
        {
          "url": "reference",
          "valueCodeableReference": {
            "concept": {
              "text": "A description of this clinical trial will be available on http://www.ClinicalTrials.gov, as required by U.S. law. This Web site will not include information that can identify you. At most, the Web site will include a summary of the results. You can search this Web site at any time. Additionally, data from this study will be available to researchers on another Web site, www.clinicaldatashare.com after the study is complete and the data are analyzed. This Web site will not include information that can identify you. You can view this Web site at any time."
            }
          }
        }
      ],
      "url": "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.provision-obligation"
    },
    {
      "extension": [
        {
          "url": "type",
          "valueCodeableConcept": {
            "coding": [
              {
                "code": "participantDisenrollment"
              }
            ]
          }
        },
        {
          "url": "reference",
          "valueCodeableReference": {
            "concept": {
              "text": "Taking part in this study is up to you. You may decide not to take part or you may leave the study at any time. Your decision will not result in any penalty or loss of benefits to which you are entitled. If you withdraw your consent for this study at any time, no further contact will be made. You may be withdrawn from the study by the investigator or sponsor at any time without your consent for various reasons. Reasons may include, but not be limited to, the study seeming to be harmful to you; you being unable to follow study procedures; or you being unable to keep study appointments. During the course of the study, we will inform you of any new findings that may affect your desire to continue in the study."
            }
          }
        }
      ],
      "url": "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.provision-obligation"
    },
    {
      "extension": [
        {
          "url": "type",
          "valueCodeableConcept": {
            "coding": [
              {
                "code": "informationDeidentification"
              }
            ]
          }
        },
        {
          "url": "reference",
          "valueCodeableReference": {
            "concept": {
              "text": "Recordings will be indentified by number only. Your name will not be noted by the study staff or reviewer on any recordings"
            }
          }
        }
      ],
      "url": "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.provision-obligation"
    },
    {
      "extension": [
        {
          "url": "type",
          "valueCodeableConcept": {
            "coding": [
              {
                "code": "sampleUsageLimitation"
              }
            ]
          }
        },
        {
          "url": "reference",
          "valueCodeableReference": {
            "concept": {
              "text": "Only study staff will have access to them. Study records (including audio recordings) will be stored for at least six years."
            }
          }
        }
      ],
      "url": "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.provision-obligation"
    },
    {
      "extension": [
        {
          "url": "type",
          "valueCodeableConcept": {
            "coding": [
              {
                "code": "informationConfidentiality"
              }
            ]
          }
        },
        {
          "url": "reference",
          "valueCodeableReference": {
            "concept": {
              "text": "The researchers will use the Certificate to protect against any demands for information that would identify you. However, if we learn about abuse of a child or elderly person or that you intend to harm yourself or someone else, or about certain communicable diseases, we will report that to the proper authorities."
            }
          }
        }
      ],
      "url": "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.provision-obligation"
    }
  ],
  "provision": [
    {
      "extension": [
        {
          "url": "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.provision-action-purpose",
          "valueCodeableReference": {
            "concept": {
              "text": "If you choose to be in this study, we would like to contact you in the future to let you know about new opportunities to take part in future studies. If you choose not to be contacted in the future about other studies, you can still take part in this study. By checking yes and writing your initials below, you permit the researchers to contact you in the future to let you know about other studies."
            }
          }
        }
      ],
      "action": [
        {
          "coding": [
            {
              "code": "recontact"
            }
          ]
        }
      ],
      "resourceType": [
        {
          "code": "Patient"
        }
      ]
    },
    {
      "extension": [
        {
          "url": "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.provision-action-purpose",
          "valueCodeableReference": {
            "concept": {
              "text": "The purpose of completing these forms is to allow study staff to access your medical records at this hospital system and various clinics and agencies in the community."
            }
          }
        }
      ],
      "action": [
        {
          "coding": [
            {
              "code": "access"
            }
          ]
        }
      ],
      "resourceType": [
        {
          "code": "Observation"
        }
      ],
      "code": [
        {
          "coding": [
            {
              "code": "887031000000108",
              "system": "http://snomed.info/sct",
              "display": "Consent for information sharing"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "LP14443-3",
              "system": "http://loinc.org",
              "display": "CD4"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "48511-0",
              "system": "http://loinc.org",
              "display": "HIV viral load"
            }
          ]
        }
      ]
    },
    {
      "action": [
        {
          "coding": [
            {
              "code": "collect"
            }
          ]
        }
      ],
      "resourceType": [
        {
          "code": "Specimen"
        }
      ],
      "code": [
        {
          "coding": [
            {
              "code": "BLD",
              "system": "http://terminology.hl7.org/CodeSystem/v3-SpecimenType"
            }
          ]
        }
      ]
    },
    {
      "action": [
        {
          "coding": [
            {
              "code": "treat"
            }
          ]
        }
      ],
      "resourceType": [
        {
          "code": "Patient"
        }
      ]
    },
    {
      "action": [
        {
          "coding": [
            {
              "code": "test"
            }
          ]
        }
      ],
      "resourceType": [
        {
          "code": "Observation"
        }
      ],
      "code": [
        {
          "coding": [
            {
              "code": "LP14443-3",
              "system": "http://loinc.org",
              "display": "CD4"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "48511-0",
              "system": "http://loinc.org",
              "display": "HIV viral load"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "273426006",
              "system": "http://snomed.info/sct",
              "display": "Drug abuse screening test"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "1820004",
              "system": "http://snomed.info/sct",
              "display": "Ethanol measurement"
            }
          ]
        }
      ]
    },
    {
      "extension": [
        {
          "url": "https://github.com/mojitoj/ASU-research-consent-on-FHIR/StructureDefinition/ASU.provision-action-purpose",
          "valueCodeableReference": {
            "concept": {
              "text": "You permit the researchers to record your session and use it for their research. Again, if you choose not to have the sessions recorded you may still take part in the study."
            }
          }
        }
      ],
      "action": [
        {
          "coding": [
            {
              "code": "use"
            }
          ]
        }
      ],
      "resourceType": [
        {
          "code": "Specimen"
        }
      ]
    }
  ],
  "status": "active",
  "grantor": [
    {
      "reference": "Patient/sample-patient"
    }
  ],
  "grantee": [
    {
      "reference": "Organization/sample-organization"
    }
  ],
  "date": "2017-01-01"
}
```
