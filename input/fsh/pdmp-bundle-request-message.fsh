Alias: $pdmp-messageheader-request-op = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-request-op
Alias: $pdmp-parameters-request-op = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-request-operation
Alias: $pdmp-patient = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-practitionerrole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $us-core-relatedperson = http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson

Profile: PdmpBundleRequestMessage
Parent: Bundle
Id: pdmp-bundle-request-message
Title: "PDMP Bundle - Request Message"
Description: "This profile constrains a Bundle resource for use as the request message to a PDMP--with a Parameters resource as the bundle's message focus."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2023-10-08T00:00:00-05:00"
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
* type only code
* type = #message (exactly)
* type MS
* total 0..0
* total ^mustSupport = false
* entry ..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry.search 0..0
* entry.search ^mustSupport = false
* entry.request 0..0
* entry.request ^mustSupport = false
* entry.response 0..0
* entry.response ^mustSupport = false
* entry contains
    messageheader 1..1 MS and
    parameters 1..1 MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $pdmp-messageheader-request-op
* entry[parameters].resource 1..1 MS
* entry[parameters].resource only $pdmp-parameters-request-op


Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $taxonomy = http://nucc.org/provider-taxonomy

Instance: pdmp-bundle-request-message-1
InstanceOf: pdmp-bundle-request-message
Usage: #example
Description: "Example of a PDMP request message"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request-message"
* type = #message
* timestamp = "2023-10-10T15:26:30.162-07:00"
* entry[0].fullUrl = "http://example.org/MyEHR/MessageHeader/messageheader-req-op-1"
* entry[=].resource = messageheader-req-op-1
* entry[+].fullUrl = "http://example.org/MyEHR/Parameters/parameters-req-op-1"
* entry[=].resource = parameters-req-op-1

Instance: messageheader-req-op-1
InstanceOf: pdmp-messageheader-request-op
Usage: #inline
* eventCoding.system = "urn:ietf:rfc:3986"
* eventCoding.code = #http://hl7.org/fhir/us/pdmp/OperationDefinition/get-pdmp-history "get-pdmp-history"
* source.name = "MyPDMPServer"
* source.endpoint = "http://pdmpserver.example.org/api"
* focus = Reference(Parameters/parameters-req-op-1)

Alias: $taxonomy = http://nucc.org/provider-taxonomy
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Instance: parameters-req-op-1
InstanceOf: pdmp-parameters-request-operation
Usage: #inline
Description: "Example of a Parameters resource used to request a patient's PDMP history"
* parameter[patient].name = "patient"
* parameter[patient].resource.id = "patient-req-op-1"
* parameter[patient].resource.resourceType = "Patient"
* parameter[patient].resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-patient"
* parameter[patient].resource.text.status = #generated
* parameter[patient].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">August Samuels</div>"
* parameter[patient].resource.identifier.type = $v2-0203#SS "Social Security number"
* parameter[patient].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* parameter[patient].resource.identifier.value = "120-35-2435"
* parameter[patient].resource.name.family = "Samuels"
* parameter[patient].resource.name.given = "August"
* parameter[patient].resource.gender = #male
* parameter[patient].resource.birthDate = "1989-03-12"
* parameter[patient].resource.address.state = "MA"
* parameter[patient].resource.address.postalCode = "01059"
* parameter[authorized-practitioner].name = "authorized-practitioner"
* parameter[authorized-practitioner].resource.id = "practitioner-req-op-1"
* parameter[authorized-practitioner].resource.resourceType = "Practitioner"
* parameter[authorized-practitioner].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* parameter[authorized-practitioner].resource.text.status = #generated
* parameter[authorized-practitioner].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Adam Amster MD</div>"
* parameter[authorized-practitioner].resource.identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* parameter[authorized-practitioner].resource.identifier[=].value = "1928340565"
* parameter[authorized-practitioner].resource.name.family = "Amster"
* parameter[authorized-practitioner].resource.name.given = "Adam"
* parameter[authorized-practitioner].resource.address.state = "MA"
* parameter[authorized-practitioner-role].name = "authorized-practitioner-role"
* parameter[authorized-practitioner-role].resource.resourceType = "PractitionerRole"
* parameter[authorized-practitioner-role].resource.id = "practitionerrole-req-op-1"
* parameter[authorized-practitioner-role].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole"
* parameter[authorized-practitioner-role].resource.text.status = #generated
* parameter[authorized-practitioner-role].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Adam Amster, Internal Medicine, Highview Clinic</div>"
* parameter[authorized-practitioner-role].resource.practitioner.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[authorized-practitioner-role].resource.practitioner.identifier.value = "9851234689"
* parameter[authorized-practitioner-role].resource.practitioner.display = "Adam Amster"
* parameter[authorized-practitioner-role].resource.organization.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[authorized-practitioner-role].resource.organization.identifier.value = "1928340565"
* parameter[authorized-practitioner-role].resource.organization.display = "Highview Clinic"
* parameter[authorized-practitioner-role].resource.telecom[0].system = #phone
* parameter[authorized-practitioner-role].resource.telecom[=].value = "951-555-5555"
* parameter[authorized-practitioner-role].resource.telecom[+].system = #email
* parameter[authorized-practitioner-role].resource.telecom[=].value = "aamster-highview-clinic@exampleemail.org"
* parameter[authorized-practitioner-organization].name = "authorized-practitioner-organization"
* parameter[authorized-practitioner-organization].resource.resourceType = "Organization"
* parameter[authorized-practitioner-organization].resource.id = "organization-req-op-1"
* parameter[authorized-practitioner-organization].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* parameter[authorized-practitioner-organization].resource.text.status = #generated
* parameter[authorized-practitioner-organization].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Highview Clinic</div>"
* parameter[authorized-practitioner-organization].resource.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[authorized-practitioner-organization].resource.identifier.value = "9851234689"
* parameter[authorized-practitioner-organization].resource.active = true
* parameter[authorized-practitioner-organization].resource.name = "Highview Clinic"
* parameter[authorized-practitioner-organization].resource.address.state = "MA"
* parameter[prefetch-request].name = "prefetch-request"
* parameter[prefetch-request].valueBoolean = false