Instance: sample-researchstudy
InstanceOf: ASU.research-study-with-consent
Description: "This is an example of a Research Study with Consent."

* status = #active
* identifier[0].value = "(CTN) 0049"
* title = "Project HOPE - Hospital Visit as Opportunity for Prevention and Engagement for HIV-Infected Drug Users"
* site[0] = Reference(sample-organization)
* recruitment[0].targetNumber = 800
* objective[0].description = "To test the success of three(3) different methods for reducing HIV viral load(the amount of HIV) in persons with HIV infection"
* objective[0].name = "Method Evaluation"
* objective[1].description = "To find out about the reasons patients sometimes have to go back to the hospital"
* objective[1].name = "Reasons for Hospital Visits"
* description = """
The study involves up to 14 visits over a period of 12 months. As part of the study, you will be asked to:
1. Take part in interviews with a study staff person. The interviews ask questions about you, your general health, drug and alcohol use, sexual behaviors, and HIV care history.
2. Provide blood samples so we may examine the CD4 count and HIV viral load in your blood.
3. Provide urine samples and blow air into a breathalyzer (a small handheld device) so we can confirm recent drug and/or alcohol use. Results of tests to determine recent drug and/or alcohol use will not affect study participation.
4. Sign release forms so we may look at your medical records.
5. Receive counseling and help from a patient navigator getting you into a clinic to receive HIV care and drug/alcohol treatment (if needed) OR receive the services and help you would normally get at this hospital to refer you into a clinic for HIV care and drug/alcohol treatment.
"""
* associatedParty[0].role = #funding-source
* associatedParty[0].party = Reference(sample-organization)
* associatedParty[0].name = "National Institute on Drug Abuse(NIDA)"
* associatedParty[0].period.start = "2024-01-01"
* associatedParty[0].period.end = "2025-12-31"
* extension[teamContact][0].valueContactDetail.name = "Dr John Smith"
* extension[teamContact][0].valueContactDetail.telecom[0].system = #phone
* extension[teamContact][0].valueContactDetail.telecom[0].value = "555-555-5555"
* extension[confidentiality][0].valueCodeableReference.concept.text = """
Information that you give to us in this study will be kept private. The investigator and his/her collaborators will consider your records confidential. The Food and Drug Administration (FDA) and Department of Health and Human Services (DHHS) may review your records. Authorized Columbia University and University of Miami employees, [insert name of institution providing local oversight] employees or other agents who will be bound by the same provisions of confidentiality may also review your records for audit purposes.

To keep your information private, most of your study records will have a unique research ID number instead of your name on them. To help protect your privacy, the study researchers have obtained a Federal Certificate of Confidentiality from the National Institutes of Health. With this Certificate, the researchers cannot be forced, even by a court order, to share research information that may identify you in any civil, criminal, administrative, legislative, or other proceedings in any court.
"""
* extension[compensation][0].valueCodeableReference.concept.text = """
All study participants will be given payment for their time and effort in taking part in this study. All study participants may receive compensation of up to $130 in cash or vouchers (gift cards). Payment will be made after completion of the following activities:

- $30 for the baseline visit
- $40 for the six month follow-up visit
- $50 for the twelve month follow-up visit
- $5 for contacting study staff one time within 2 months before the 6-month follow-up visit to confirm your locator information.
- $5 for contacting study staff one time within 2 months before the 12-month follow-up visit to confirm your locator information.

*Please note that the above 6-month and 12-month follow-up visits may be pro-rated to a lesser amount if you choose not to complete all study activities as described earlier in this consent form.
"""
* extension[cost][0].valueCodeableReference.concept.text = """
You will not be charged for any counseling, interviews or other activities done as part of this study. However, you or your insurance company is responsible for all costs related to the clinical treatment that you receive as part of your hospital stay and that you may receive as part of HIV primary care or substance use treatment.
"""
* extension[benefits][0].valueCodeableReference.concept.text = """
There may or may not be any benefits to you from taking part in this study. However, you may benefit by going to a clinic to receive HIV care and/or substance use treatment. You may also benefit from learning more about HIV and/or substance use. Also, information gained from this study may help to improve HIV health care and substance use treatment for HIV-positive people in the future.
"""
* extension[risks][0].valueCodeableReference.concept.text = """
- Blood drawing (venipuncture) risks: Drawing blood may cause temporary discomfort from the needle stick and/or bruising. Rarely, infection or the formation of a small clot or swelling to the vein and surrounding area may occur. All measures will be taken to minimize this risk by strict adherence to proper procedures for drawing blood.

- Other risks: There are no known psychological risks associated with the interview questionnaires, procedures, or counseling in this study. It is possible that discussion of sensitive topics such as HIV or substance use may cause emotional discomfort in some participants. There may also be risks of emotional distress, inconvenience and possible loss of privacy and confidentiality associated with taking part in a research study. There may be risks that are unknown.
"""
* extension[procedures][0].valueCodeableReference.concept.text = """
Being part of this study is up to you. There is no penalty for not being part of this study. If you choose not to take part in the study. your medical care will not change in any way due to your choice. If you do agree to be part of this study:

You may have up to 14 study visits during a one year period. Your first visit will be here at the hospital. The remainder of the visits will take place here, or in our designated research office, or at clinics or other locations in the community.
"""
* extension[alternativeProcedures][0].valueCodeableReference.concept.text = """
You have the choice not to be part of this study. If you choose not to be in this study, your choice will not affect the medical care that you receive here in the hospital or at other clinics in the community. If you wish, you may seek treatment for HIV and/or substance use by yourself.
"""
* extension[withdraw][0].valueCodeableReference.concept.text = """
Taking part in this study is up to you. You may decide not to take part or you may leave the study at any time. Your decision will not result in any penalty or loss of benefits to which you are entitled. If you withdraw your consent for this study at any time, no further contact will be made.
"""
* extension[participantTermination][0].valueCodeableReference.concept.text = """
You may be withdrawn from the study by the investigator or sponsor at any time without your consent for various reasons. Reasons may include, but not be limited to, the study seeming to be harmful to you; you being unable to follow study procedures; or you being unable to keep study appointments. During the course of the study, we will inform you of any new findings that may affect your desire to continue in the study.
"""
