Instance: sample-patient
InstanceOf: Patient 
Description: "Sample Patient."
* name
  * given[0] = "James"
  * family = "Doe"
* communication[0]
  * language
    * coding[0]
      * system = "urn:ietf:bcp:47"
      * code = #en-US
      * display = "English (United States)"