Alias: $pdmp-messageheader-request = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-request
Alias: $pdmp-parameters-request = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-request
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-practitionerrole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $us-core-relatedperson = http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson

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
    animal-owner 0..1 MS and
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
* entry[animal-owner] ^comment = "RelatedPerson reflecting an animal patient's owner"
* entry[animal-owner].resource 1..1 MS
* entry[animal-owner].resource only $us-core-relatedperson
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
* source.endpoint = "http://pdmpserver.example.org/api"
* focus = Reference(parameters-req-1)

Instance: parameters-req-1
InstanceOf: Parameters
Usage: #inline
* parameter[0].name = "patient"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Patient/patient-req-1)
* parameter[+].name = "authorized-provider"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/PractitionerRole/practitionerrole-req-1)
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
* telecom[0].system = #phone
* telecom[=].value = "951-555-5555"
* telecom[+].system = #email
* telecom[=].value = "aamster-highview-clinic@exampleemail.org"

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

















Instance: pdmp-bundle-request-2-delegate
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
* source.endpoint = "http://pdmpserver.example.org/api"
* focus = Reference(parameters-req-2)

Instance: parameters-req-2
InstanceOf: Parameters
Usage: #inline
* parameter[0].name = "patient"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Patient/patient-req-2)
* parameter[+].name = "authorized-provider"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/PractitionerRole/practitionerrole-req-2)
* parameter[+].name = "provider-delegate"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/PractitionerRole/practitionerrole-req-2-del)
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
* telecom[0].system = #phone
* telecom[=].value = "951-555-5555"
* telecom[+].system = #email
* telecom[=].value = "aamster-highview-clinic@exampleemail.org"


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
* telecom[0].system = #phone
* telecom[=].value = "951-555-1234"
* telecom[+].system = #email
* telecom[=].value = "bbartok-highview-clinic@exampleemail.org"

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












Instance: pdmp-bundle-request-3-veterinary
InstanceOf: pdmp-bundle-request
Usage: #example
Description: "Example of a PDMP request message for an animal patient"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request"
* type = #message
* timestamp = "2023-10-10T15:26:30.162-07:00"
* entry[0].fullUrl = "http://example.org/MyEHR/MessageHeader/messageheader-req-3"
* entry[=].resource = messageheader-req-3
* entry[+].fullUrl = "http://example.org/MyEHR/Parameters/parameters-req-3"
* entry[=].resource = parameters-req-3
* entry[+].fullUrl = "http://example.org/MyEHR/Patient/patient-req-3"
* entry[=].resource = patient-req-3
* entry[+].fullUrl = "http://example.org/MyEHR/RelatedPerson/relatedperson-req-3"
* entry[=].resource = relatedperson-req-3
* entry[+].fullUrl = "http://example.org/MyEHR/PractitionerRole/practitionerrole-req-3"
* entry[=].resource = practitionerrole-req-3
* entry[+].fullUrl = "http://example.org/MyEHR/Practitioner/practitioner-req-3"
* entry[=].resource = practitioner-req-3
* entry[+].fullUrl = "http://example.org/MyEHR/Organization/organization-req-3"
* entry[=].resource = organization-req-3

Instance: messageheader-req-3
InstanceOf: MessageHeader
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-request"
* eventCoding.system = "http://hl7.org/fhir/us/pdmp/CodeSystem/pdmp-event-type"
* eventCoding.code = #pdmp-patient-request
* eventCoding.display = "PDMP Patient Request"
* sender = Reference(practitionerrole-req-3)
* source.name = "MyPDMPServer"
* source.endpoint = "http://pdmpserver.example.org/api"
* focus = Reference(parameters-req-3)

Instance: parameters-req-3
InstanceOf: Parameters
Usage: #inline
* parameter[0].name = "patient"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Patient/patient-req-3)
* parameter[+].name = "animal-owner"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/RelatedPerson/relatedperson-req-3)
* parameter[+].name = "authorized-provider"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/PractitionerRole/practitionerrole-req-3)
* parameter[+].name = "organization"
* parameter[=].valueReference = Reference(http://example.org/MyEHR/Organization/organization-req-3)
* parameter[+].name = "prefetch-only"
* parameter[=].valueBoolean = false

Instance: patient-req-3
InstanceOf: pdmp-patient
Usage: #inline
Description: "Example of a PDMP patient representing an animal"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-patient"
* extension[0].url = $patient-animal-extension
* extension[=].extension[0].url = "species"
* extension[=].extension[0].valueCodeableConcept.coding = http://hl7.org/fhir/animal-species#canislf "Dog"
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #MR
* identifier.type.coding.display = "Medical record number"
* identifier.system = "http://vet-medical.example.org/mrn"
* identifier.value = "10035406"
* name.family = "Samuels"
* name.given = "Fido"
* gender = #male
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* birthDate.extension.valueCode = #unknown
* address.line[0] = "10023 Oakways Ln"
* address.state = "Concord"
* address.state = "MA"
* address.postalCode = "01742"

Instance: relatedperson-req-3
InstanceOf: RelatedPerson
Usage: #inline
Description: "Example of the owner of an animal patient"
* meta.profile = $us-core-relatedperson
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #DL
* identifier.type.coding.display = "Driver's license number"
* identifier.value = "M231-64600-565-55"
* active = true
* name.family = "Samuels"
* name.given = "August"
* gender = #male
* birthDate = "1989-03-12"
* address.line[0] = "10023 Oakways Ln"
* address.state = "Concord"
* address.state = "MA"
* address.postalCode = "01742"
* patient.reference = "Patient/patient-req-3"
* relationship.coding = http://hl7.org/fhir/us/pdmp/CodeSystem/temporary-pdmp-patient-relationship#animal-owner "Animal Owner"

Instance: practitionerrole-req-3
InstanceOf: PractitionerRole
Usage: #inline
* practitioner.id = "#practitioner-req-3"
* practitioner.display = "Adam Amster"
* organization.id = "#organization-req-3"
* organization.display = "Highview Veterinary"
* specialty = $taxonomy#174M00000X "Veterinarian"
* telecom[0].system = #phone
* telecom[=].value = "951-555-5555"
* telecom[+].system = #email
* telecom[=].value = "aamster-highview-veterinary@exampleemail.org"

Instance: practitioner-req-3
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1928340565"
* name.family = "Amster"
* name.given = "Adam"
* address.state = "MA"

Instance: organization-req-3
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9851234689"
* active = true
* name = "Highview Veterinary"
* address.state = "MA"