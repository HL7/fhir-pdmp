Extension: Method_Of_Payment
Id: pdmp-extension-method-of-payment
Title: "PDMP Extension - Method of Payment"
Description: "A code representing the method of payment for the dispensation"
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
* value[x] 1..
* value[x] only Coding
* value[x] ^short = "Method of payment"
* value[x] ^definition = "A code representing the method of payment for the dispensation"
* valueCoding from pmix-method-of-payment (extensible)
