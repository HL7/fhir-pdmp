Alias: $pdmp-messageheader-request = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-request
Alias: $pdmp-parameters-request = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-request
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-practitionerrole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization

Profile: PdmpBundleRequest
Parent: Bundle
Id: pdmp-bundle-request
Title: "PDMP Bundle - Request Message"
Description: "This profile constrains a Bundle resource for use as the request message to a PDMP--with a Parameters resource as the bundle's message focus."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request"
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
    parameters 1..1 MS and
    patient 1..1 MS and
    practitionerrole 1..2 MS and
    practitioner 1..2 MS and
    organization 0..* MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $pdmp-messageheader-request
* entry[parameters].resource 1..1 MS
* entry[parameters].resource only $pdmp-parameters-request
* entry[patient] ^comment = "Patient information as understood by the requesting system."
* entry[patient].resource 1..1 MS
* entry[patient].resource only $us-core-patient
* entry[practitionerrole].resource 1..1 MS
* entry[practitionerrole].resource only $us-core-practitionerrole
* entry[practitioner].resource 1..1 MS
* entry[practitioner].resource only $us-core-practitioner
* entry[organization].resource 1..1 MS
* entry[organization].resource only $us-core-organization

Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $taxonomy = http://nucc.org/provider-taxonomy

Instance: pdmp-bundle-request-1
InstanceOf: pdmp-bundle-request
Usage: #example
Description: "Example of a PDMP request message"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request"
* type = #message
* timestamp = "2023-10-10T15:26:30.162-07:00"
* entry[0].fullUrl = "http://example.org/MyEHR/MessageHeader/messageheader-req-1"
* entry[=].resource = messageheader-req-1
* entry[+].fullUrl = "http://example.org/MyEHR/Parameters/parameters-req-1"
* entry[=].resource = parameters-req-1
* entry[+].fullUrl = "http://example.org/MyEHR/Patient/patient-req-1"
* entry[=].resource = patient-req-1
* entry[+].fullUrl = "http://example.org/MyEHR/PractitionerRole/practitionerrole-req-1"
* entry[=].resource = practitionerrole-req-1
* entry[+].fullUrl = "http://example.org/MyEHR/Practitioner/practitioner-req-1"
* entry[=].resource = practitioner-req-1
* entry[+].fullUrl = "http://example.org/MyEHR/Organization/organization-req-1"
* entry[=].resource = organization-req-1

Instance: messageheader-req-1
InstanceOf: MessageHeader
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-request"
* eventCoding.system = "http://hl7.org/fhir/us/pdmp/CodeSystem/pdmp-event-type"
* eventCoding.code = #pdmp-patient-request
* eventCoding.display = "PDMP Patient Request"
* sender = Reference(practitionerrole-req-1)
* source.name = "MyPDMPServer"
* source.endpoint = "http://StatePDMPServer/StatePDMP/api"
* focus = Reference(parameters-req-1)

Instance: parameters-req-1
InstanceOf: Parameters
Usage: #inline
* parameter[0].name = "patient"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Patient/patient-req-1)
* parameter[+].name = "authorized-provider"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Practitioner/practitionerrole-req-1)
* parameter[+].name = "organization"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Organization/organization-req-1)
* parameter[+].name = "prefetch-only"
* parameter[=].valueBoolean = false

Instance: patient-req-1
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "120-35-2435"
* name.family = "Samuels"
* name.given = "August"
* gender = #male
* birthDate = "1989-03-12"
* address.state = "MA"
* address.postalCode = "01059"

Instance: practitionerrole-req-1
InstanceOf: PractitionerRole
Usage: #inline
* practitioner.id = "#practitioner-req-1"
* practitioner.display = "Adam Amster"
* organization.id = "#organization-req-1"
* organization.display = "Highview Clinic"
* specialty = $taxonomy#207R00000X "Internal Medicine Physician"
* endpoint = Reference (http://www.example.org/directmail/aamster)

Instance: practitioner-req-1
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1928340565"
* name.family = "Amster"
* name.given = "Adam"
* address.state = "MA"

Instance: organization-req-1
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9851234689"
* active = true
* name = "Highview Clinic"
* address.state = "MA"

















Instance: pdmp-bundle-request-2
InstanceOf: pdmp-bundle-request
Usage: #example
Description: "Example of a PDMP request message submitted by a delegate to the VHA"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request"
* type = #message
* timestamp = "2023-10-10T15:26:30.162-07:00"
* entry[0].fullUrl = "http://example.org/MyEHR/MessageHeader/messageheader-req-2"
* entry[=].resource = messageheader-req-2
* entry[+].fullUrl = "http://example.org/MyEHR/Parameters/parameters-req-2"
* entry[=].resource = parameters-req-2
* entry[+].fullUrl = "http://example.org/MyEHR/Patient/patient-req-2"
* entry[=].resource = patient-req-2
* entry[+].fullUrl = "http://example.org/MyEHR/PractitionerRole/practitionerrole-req-2"
* entry[=].resource = practitionerrole-req-2
* entry[+].fullUrl = "http://example.org/MyEHR/Practitioner/practitioner-req-2"
* entry[=].resource = practitioner-req-2
* entry[+].fullUrl = "http://example.org/MyEHR/PractitionerRole/practitionerrole-req-2-del"
* entry[=].resource = practitionerrole-req-2-del
* entry[+].fullUrl = "http://example.org/MyEHR/Practitioner/practitioner-req-2-del"
* entry[=].resource = practitioner-req-2-del
* entry[+].fullUrl = "http://example.org/MyEHR/Organization/organization-req-2"
* entry[=].resource = organization-req-2

Instance: messageheader-req-2
InstanceOf: MessageHeader
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-request"
* eventCoding.system = "http://hl7.org/fhir/us/pdmp/CodeSystem/pdmp-event-type"
* eventCoding.code = #pdmp-patient-request
* eventCoding.display = "PDMP Patient Request"
* sender = Reference(practitionerrole-req-2-del)
* source.name = "MyPDMPServer"
* source.endpoint = "http://StatePDMPServer/StatePDMP/api"
* focus = Reference(parameters-req-2)

Instance: parameters-req-2
InstanceOf: Parameters
Usage: #inline
* parameter[0].name = "patient"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Patient/patient-req-2)
* parameter[+].name = "authorized-provider"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Practitioner/practitionerrole-req-2)
* parameter[+].name = "provider-delegate"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Practitioner/practitionerrole-req-2-del)
* parameter[+].name = "organization"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Organization/organization-req-2)
* parameter[+].name = "prefetch-only"
* parameter[=].valueBoolean = false

Instance: patient-req-2
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "120-35-2435"
* name.family = "Samuels"
* name.given = "August"
* gender = #male
* birthDate = "1989-03-12"
* address.state = "MA"
* address.postalCode = "01059"

Instance: practitionerrole-req-2
InstanceOf: PractitionerRole
Usage: #inline
* practitioner.id = "#practitioner-req-2"
* practitioner.display = "Adam Amster"
* organization.id = "#organization-req-2"
* organization.display = "Highview Clinic"
* specialty = $taxonomy#207R00000X "Internal Medicine Physician"
* endpoint = Reference (http://www.example.org/directmail/aamster)

Instance: practitioner-req-2
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1928340565"
* name.family = "Amster"
* name.given = "Adam"
* address.state = "MA"

Instance: practitionerrole-req-2-del
InstanceOf: PractitionerRole
Usage: #inline
* practitioner.id = "#practitioner-req-2-del"
* practitioner.display = "Boris Bartok"
* organization.id = "#organization-req-2"
* organization.display = "Highview Clinic"
* specialty = $taxonomy#163W00000X "Registered Nurse"
* endpoint = Reference (http://www.example.org/directmail/bbartok)

Instance: practitioner-req-2-del
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "6024501358"
* name.family = "Bartok"
* name.given = "Boris"
* address.state = "MA"

Instance: organization-req-2
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9851234689"
* active = true
* name = "Highview Clinic"
* address.state = "MA"