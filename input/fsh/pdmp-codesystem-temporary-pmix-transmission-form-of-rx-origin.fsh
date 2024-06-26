CodeSystem: TemporaryPMIXTransmissionFormOfRxOrigin
Id: temporary-pmix-transmission-form-of-rx-origin
Title: "PMIX Transmission Form Of Rx Origin Code (Temporary)"
Description: "Code indicating how the pharmacy received the prescription"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #01 "Written Prescription"
* #02 "Telephone Prescription"
* #03 "Telephone Emergency Prescription"
* #04 "Fax Prescription"
* #05 "Electronic Prescription"
* #06 "Transferred/Forwarded Prescription"
* #99 "Other"