# ASU FHIR Consent Validation

The goal of this project to validate the FHIR Consent resource by collecting a set of sample consent forms from different clinical domains and modeling these forms using the FHIR Consent resource.

## Sample Treatment Consent

The following shows a consent object in which a patient authorizes an organization to administer SARS-CoV-2 vaccines.

```json
{
  "resourceType": "Consent",
  "id": "treatment-consent-sample",
  "meta": {
    "profile": [
      "https://github.com/mojitoj/ASU-FHIR-consent-validation/StructureDefinition/ASU.treatment-consent"
    ]
  },
  "scope": {
    "coding": [
      {
        "code": "treatment",
        "system": "http://terminology.hl7.org/CodeSystem/consentscope"
      }
    ]
  },
  "category": [
    {
      "coding": [
        {
          "code": "59284-0",
          "system": "http://loinc.org",
          "display": "Consent Document"
        }
      ]
    }
  ],
  "provision": {
    "actor": [
      {
        "role": {
          "coding": [
            {
              "code": "PROV",
              "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
              "display": "healthcare provider"
            }
          ]
        },
        "reference": {
          "reference": "Practitioner/sample-practitioner"
        }
      }
    ],
    "type": "permit",
    "period": {
      "start": "2023-03-06",
      "end": "2025-03-06"
    },
    "code": [
      {
        "coding": [
          {
            "code": "1157107003",
            "system": "http://snomed.info/sct",
            "display": "Administration of SARS-CoV-2 non-replicating viral vector vaccine"
          }
        ]
      },
      {
        "coding": [
          {
            "code": "1157108008",
            "system": "http://snomed.info/sct",
            "display": "Administration of second dose SARS-CoV-2 non-replicating viral vector vaccine"
          }
        ]
      }
    ]
  },
  "status": "draft",
  "patient": {
    "reference": "Patient/sample-patient"
  },
  "organization": [
    {
      "reference": "Organization/sample-organization"
    }
  ],
  "performer": [
    {
      "reference": "Organization/sample-organization"
    }
  ],
  "dateTime": "2023-03-06"
}
```
