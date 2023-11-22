CodeSystem: PMIXTransmissionFormOfRxOriginCS
Id: pmix-rx-origin-code-system
Title: "PMIX Transmission Form Of Rx Origin Code System"
Description:  "Code indicating how the pharmacy received the prescription - exerpted from PMIX_NIEM_4.0_Domain_Extension_Schema.xsd"
* #01 "Written Prescription"
* #02 "Telephone Prescription"
* #03 "Telephone Emergency Prescription"
* #04 "Fax Prescription"
* #05 "Electronic Prescription"
* #06 "Transferred/Forwarded Prescription"
* #99 "Other"

ValueSet: PMIXTransmissionFormOfRxOriginVS
Id: pmix-rx-origin-code-vs
Title: "PMIX Transmission Form Of Rx Origin Value Set"
Description: "Code indicating how the pharmacy received the prescription"
* include codes from pmix-rx-origin-code-system
