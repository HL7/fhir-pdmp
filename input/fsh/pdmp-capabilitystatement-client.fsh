Instance: pdmp-client
InstanceOf: CapabilityStatement
Usage: #definition
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p> See <a href=\"capability-statements.html\">Capability Statements</a> for additional details.</p></div>"
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #phx
* url = "http://hl7.org/fhir/us/pdmp/CapabilityStatement/pdmp-client"
* version = "1.0.0"
* name = "PDMP_Server"
* status = #active
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
* description = "This resource defines the expected capabilities of the PDMP Client actor when conforming to the PDMP IG and it is expected that it will be used in conjunction with the US Core CapabilityStatement. Together they describe the complete list of actual profiles, RESTful operations, and messaging capabilities supported by PDMP Clients. PDMP Client requirements may also be impacted by the rules of local jurisdictions or other contextual requirements."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* format[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHALL
* format[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHOULD
* rest.mode = #client
* rest.operation.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.operation.extension.valueCode = #SHALL
* rest.operation.name = "pdmp-history"
* rest.operation.definition = "http://hl7.org/fhir/us/pdmp/OperationDefinition/pdmp-history"
* rest.operation.documentation = "Operation returning an individual patient's PDMP history"
