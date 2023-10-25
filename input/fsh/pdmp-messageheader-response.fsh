Alias: $pdmp-parameters-response = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response

Profile: PdmpMessageHeaderResponse
Parent: MessageHeader
Id: pdmp-messageheader-response
Title: "PDMP MessageHeader - Response"
Description: "This profile constrains a MessageHeader resource for use in a PDMP response data bundle. A Bundle resource is the focus."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-response"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-01T00:00:00-00:00"
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
* . ^mustSupport = false
* eventCoding 1..1 MS
* eventCoding.system 1..1 MS
* eventCoding.system = "http://hl7.org/fhir/us/pdmp/CodeSystem/pdmp-event-type" (exactly)
* eventCoding.code 1..1 MS
* eventCoding.code = #pdmp-patient-response (exactly)
* focus 1..1 MS
* focus only Reference(Bundle)
* focus ^type.aggregation = #bundled