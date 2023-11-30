Alias: $pdmp-parameters-response-operation = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response-operation

Profile: PdmpMessageHeaderResponseOp
Parent: MessageHeader
Id: pdmp-messageheader-response-op
Title: "PDMP MessageHeader - Response Operation"
Description: "This profile constrains a MessageHeader resource for use in a PDMP response data bundle. A Bundle resource is the focus."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
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
* eventCoding.system = "urn:ietf:rfc:3986" (exactly)
* eventCoding.code 1..1 MS
* eventCoding.code = #http://hl7.org/fhir/us/pdmp/OperationDefinition/get-pdmp-history (exactly)
* focus 1..1 MS
* focus only Reference(Parameters)
* focus ^type.aggregation = #bundled