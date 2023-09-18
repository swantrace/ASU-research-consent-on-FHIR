Profile:        TreatmentConsent
Parent:         Consent
Id:             ASU.treatment-consent
Title:          "Treatment Consent Profile"
Description:    """
A profile of the Consent resource for modeling treatment consents
"""
* category = $CONSENT-SCOPE#treatment

// TODO maybe we should define a category for treatment
* subject 1..1
* date 1..1
* period 1..1
* grantor 1..1
* grantee 1..
* controller 1..1
* decision = #permit
* provision.actor 1.. 
* provision.actor.role = $ROLE-CLASS#PROV "healthcare provider"
// TODO maybe we should define a more specific code to reflect this role
* provision.action 0..0
* provision.documentType 0..0
* provision.resourceType 0..0
* provision.securityLabel 0..0
* provision.dataPeriod 0..0
* provision.code 1.. 
* provision.provision.provision 0..0