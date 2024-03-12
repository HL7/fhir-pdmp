Extension: MME
Id: pdmp-extension-lme
Title: "PDMP Extension - LME"
Description: "LME - Lorazepam Milligram Equivalent.  The lorazepam dose (mg) equivalent to the sedative dose of the prescription as dispensed."
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
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* value[x] 1..
* value[x] only decimal
* value[x] ^short = "LME"
* value[x] ^definition = "Represents the equivalent lorazepam dose (mg) for sedative dose of prescription as dispensed."