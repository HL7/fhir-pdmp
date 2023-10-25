Extension: PDMP_Activity_Period_Extension
Id: pdmp-activity-period-extension
Title: "PDMP_Activity_Period_Extension"
Description: "The date period (start/end) of the responses returned by the PDMP."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-06-20T00:00:00.000-05:00"
* ^version = "2.2.0"
* ^date = "2023-06-22T13:57:40-05:00"
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
* ^context.type = #element
* ^context.expression = "MessageHeader"
* value[x] 1..
* value[x] only Period
* value[x] ^short = "PDMP Activity Period"
* value[x] ^definition = "Indicates the date period of dispenses and administrations returned by the PDMP"