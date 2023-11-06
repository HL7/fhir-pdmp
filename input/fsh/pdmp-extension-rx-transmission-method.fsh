Extension: Prescription_Transmission_Method
Id: pdmp-extension-rx-transmission-method
Title: "Prescription_Transmission_Method"
Description: "The method by which the prescription was trasmitted to the dispensing or administering party."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-11-05T00:00:00.000-05:00"
* ^version = "1.0.0"
* ^date = "2023-11-05T00:00:00-05:00"
* ^publisher = "HL7 International / Pharmacy"
* ^contact[0].name = "HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom[0].system = #email
* ^contact[=].telecom[=].value = "frank.mckinney@pocp.com"
* ^contact[=].telecom[+].system = #email
* ^contact[=].telecom[=].value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^context[0].type = #element
* ^context[=].expression = "MedicationDispense"
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* value[x] 1..1
* value[x] only Coding
* value[x] ^short = "Prescription Transmission Method"
* value[x] ^definition = "The method by which the prescription was transmitted to the dispensing or administering party."
* valueCoding from pdmp-rx-transmission-method (extensible)

