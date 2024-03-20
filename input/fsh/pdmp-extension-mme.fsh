Extension: Morphine_Milligram_Equivalent
Id: pdmp-extension-mme
Title: "PDMP Extension - MME"
Description: "MME - Morphine Milligram Equivalent.  The quantity of morphine (mg/day, except for fentanyl patchs use mcg/hr) equivalent to the daily opioid dose for the prescription as dispensed."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-03-11T00:00:00.000-07:00"
* ^version = "1.0.0"
* ^date = "2024-03-11T00:00:00.000-07:00"
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
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* value[x] 1..
* value[x] only decimal
* value[x] ^short = "MME"
* value[x] ^definition = "Represents the equivalent daily morphine dose (mg/day or mcg/hr) for prescription as dispensed."
