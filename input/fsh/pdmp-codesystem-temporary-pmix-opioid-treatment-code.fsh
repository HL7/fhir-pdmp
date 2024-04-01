CodeSystem: TemporaryPMIXOpioidTreatmentCode
Id: temporary-pmix-opioid-treatment-code
Title: "PMIX Opioid Treatment Code (Temporary)"
Description: "A code identifying the reason for an opioid prescription"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-04-01T00:00:00-05:00"
* ^publisher = "HL7 International / Pharmacy"
* ^contact[0].name = "HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Scott Robertson"
* ^contact[=].telecom[0].system = #email
* ^contact[=].telecom[=].value = "scott.robertson@pocp.com"
* ^contact[=].telecom[+].system = #email
* ^contact[=].telecom[=].value = "scott@BearHealthTech.consulting"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^caseSensitive = false
* ^content = #complete
* #01 "Not Used for Opioid Dependency Treatment"
* #02 "Used for Opioid Dependency Treatment"
* #03 "Pain Associated with Active and Aftercare Cancer Treatment"
* #04 "Palliative Care in Conjunction with a Serious Illness"
* #05 "End-of-Life and Hospice Care"
* #06 "A Pregnant Individual with a Pre-existing Prescription for Opioids"
* #07 "Acute Pain for an Individual with an Existing Opioid Prescription for Chronic Pain"
* #08 "Individuals Pursuing an Active Taper of Opioid Medications"
* #09 "Patient is Participating in a Pain Management Contract"
* #10 "Acute Opioid Therapy"
* #11 "Chronic Opioid Therapy."
* #99 "Other (trading partner agreed upon reason or not indiciated)"
