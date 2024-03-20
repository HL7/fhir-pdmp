Instance: pdmp-history
InstanceOf: OperationDefinition
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #phx
* version = "1.0.0"
* name = "PdmpOperationGetPdmpHistory"
* title = "PDMP Operation Get PDMP History"
* status = #active
* kind = #operation
* date = "2023-11-29"
* publisher = "HL7 International / Pharmacy"
* contact[0].name = "HL7 International / Pharmacy"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* contact[+].name = "Frank McKinney"
* contact[=].telecom[0].system = #url
* contact[=].telecom[=].value = "frank.mckinney@pocp.com"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "fm@frankmckinney.com"
* description = "Operation returning an individual patient's PDMP history"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* affectsState = false
* code = #pdmp-history
* system = true
* type = false
* instance = false
* inputProfile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-request"
* outputProfile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response"
* parameter[0].name = #patient
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The patient whose PDMP history is desired"
* parameter[=].type = #Patient
* parameter[+].name = #animal-owner
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "If the patient is an animal, this parameter reflects its owner's information"
* parameter[=].type = #RelatedPerson
* parameter[+].name = #authorized-practitioner
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Practitioner resource reflecting the provider who is authorized to view the returned PDMP information"
* parameter[=].type = #Practitioner
* parameter[+].name = #authorized-practitioner-role
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The PractitionerRole resource reflecting the authorized provider's practice information"
* parameter[=].type = #PractitionerRole
* parameter[+].name = #authorized-practitioner-organization
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "An Organization resource reflecting the authorized provider's organization"
* parameter[=].type = #Organization
* parameter[+].name = #delegate-practitioner
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "A Practitioner resource reflecting a provider who is requesting the PDMP information on behalf of another party"
* parameter[=].type = #Practitioner
* parameter[+].name = #delegate-practitioner-role
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "A PractitionerRole resource reflecting the delegate's practice information"
* parameter[=].type = #PractitionerRole
* parameter[+].name = #delegate-organization
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "An Organization resource reflecting the delegate's organization"
* parameter[=].type = #Organization
* parameter[+].name = #pre-stage-only
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Indicates that the PDMP Responder is expected to gather the requested information and stage it for future retrieval (via a subsequent invocation of this operation)"
* parameter[=].type = #boolean
* parameter[+].name = #pre-stage-retrieval-key
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The pre-stage-retrieval-key returned from a previous operation call in which the pre-stage-only parameter was set to true"
* parameter[=].type = #string
* parameter[+].name = #pdmp-history-data
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "A Bundle of type 'collection' that contains medication dispensation and administration information for the requested patient (if found)"
* parameter[=].type = #Bundle
* parameter[+].name = #pdmp-history-link
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "A url to access an external report containing a PDMP history for the requested patient"
* parameter[=].type = #url
* parameter[+].name = #pre-stage-retrieval-key
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "This parameter is used only when responding to an invocation in which the pre-stage-only parameter was set to true. This element may be populated with a string value that the requester is to submit in the pre-stage-retrieval-key parameter of the subsequent invocation that retrieves the staged information"
* parameter[=].type = #string
* parameter[+].name = #outcome
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "An OperationOutcome resource containing processing information associated with the operation response, including error, warning and/or informational information"
* parameter[=].type = #OperationOutcome