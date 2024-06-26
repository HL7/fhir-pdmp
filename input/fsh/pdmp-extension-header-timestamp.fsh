Extension: PDMP_Header_Timestamp_Extension
Id: pdmp-header-timestamp-extension
Title: "PDMP Extension - Header Timestamp"
Description: "The date the request was sent to the PDMP Responder."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-04-01T00:00:00.000-05:00"
* ^version = "1.0.0"
* ^date = "2024-04-01T00:00:00-05:00"
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
* ^context[=].expression = "MessageHeader"
* ^context[+].type = #element
* ^context[=].expression = "Parameters.parameter"
* ^context[+].type = #element
* ^context[=].expression = "Bundle.entry.Parameters.parameter"
* value[x] 1..
* value[x] only dateTime
* value[x] ^short = "Message Timestamp"
* value[x] ^definition = "Represents the date time the request was sent to the PDMP Responder"