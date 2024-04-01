Extension: Opioid_Treatment_Code
Id: pdmp-extension-opioid-treatment-code
Title: "PDMP Extension - Opioid Treatment Code"
Description: "A code identifying the reason for an opioid prescription"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-04-01T00:00:00.000-07:00"
* ^version = "1.0.0"
* ^date = "2024-04-01T00:00:00.000-07:00"
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
* ^context[0].type = #element
* ^context[=].expression = "MedicationDispense"
* value[x] 1..
* value[x] only Coding
* value[x] ^short = "Method of payment"
* value[x] ^definition = "A code representing the method of payment for the dispensation"
* valueCoding from pdmp-opioid-treatment-code
