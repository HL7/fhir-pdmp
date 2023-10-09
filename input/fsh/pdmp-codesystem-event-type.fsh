CodeSystem: PdmpCodeSystemEventType
Id: pdmp-event-type
Title: "PDMP Code System - Event Type"
Description: "This code system defines event types used in PDMP message headers"
* ^meta.lastUpdated = "2023-10-01T00:00:00-05:00"
* ^url = "http://hl7.org/fhir/us/pdmp/CodeSystem/pdmp-event-type"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-01T00:00:00-05:00"
* ^publisher = "HL7 International - Pharmacy"
* ^contact[0].name = "HL7 International - Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom[0].system = #email
* ^contact[=].telecom[=].value = "frank.mckinney@pocp.com"
* ^contact[=].telecom[+].system = #email
* ^contact[=].telecom[=].value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^caseSensitive = false
* ^content = #complete
* #request "Request" "PDMP request"
* #response "Response" "PDMP response"