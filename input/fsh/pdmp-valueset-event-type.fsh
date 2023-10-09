Alias: $pdmp-event-type = http://hl7.org/fhir/us/pdmp/CodeSystem/pdmp-event-type

ValueSet: PdmpValueSetEventType
Id: pdmp-event-type
Title: "PDMP Value Set - Event Type"
Description: "This value set contains event types used in PDMP message headers."
* ^meta.lastUpdated = "2023-10-01T00:00:00-05:00"
* ^url = "http://hl7.org/fhir/us/pdmp/ValueSet/pdmp-event-type"
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
* include codes from system $pdmp-event-type