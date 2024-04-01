Instance: pdmp-request
InstanceOf: MessageDefinition
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #phx
* url = "http://hl7.org/fhir/us/pdmp/MessageDefinition/pdmp-request"
* version = "1.0.0"
* name = "PdmpMessageDefinitionRequest"
* title = "PDMP Message Definition - Request"
* status = #active
* experimental = false
* date = "2024-04-01T00:00:00-05:00"
* publisher = "HL7 International / Pharmacy"
* contact[0].name = "HL7 International / Pharmacy"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* contact[+].name = "Frank McKinney"
* contact[=].telecom[0].system = #email
* contact[=].telecom[=].value = "frank.mckinney@pocp.com"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "fm@frankmckinney.com"
* description = "Message requesting information from a PDMP facilitator system about medication dispensations and administrations"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Request information from a PDMP facilitator about medication dispensations and administrations"
* eventCoding = $operation-event-type#http://hl7.org/fhir/us/pdmp/OperationDefinition/pdmp-history
* category = #currency
* focus.code = #Parameters
* focus.min = 1
* focus.max = "1"
* allowedResponse.message = "http://hl7.org/fhir/us/pdmp/MessageDefinition/pdmp-response"
* allowedResponse.situation = "Returned when processing completes"