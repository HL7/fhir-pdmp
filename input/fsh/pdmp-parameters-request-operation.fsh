Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-relatedperson = http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-practitionerrole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $pdmp-patient = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-patient

Profile: PdmpParametersRequestOperation
Parent: Parameters
Id: pdmp-parameters-request-operation
Title: "PDMP Parameters - Request Operation"
Description: "This profile tailors the Parameters resource to convey PDMP Request inputs."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.lastUpdated = "2023-10-05T00:00:00-05:00"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-10-05T00:00:00-05:00"
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
* parameter MS
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.ordered = false
* parameter ^slicing.rules = #open
* parameter contains
    patient 1..1 MS and
    animal-owner 0..1 MS and
    authorized-practitioner 1..1 MS and
    authorized-practitioner-role 1..1 MS and
    authorized-practitioner-organization 1..1 MS and
    delegate-practitioner 0..1 MS and
    delegate-practitioner-role 0..1 MS and
    delegate-organization 0..1 MS and
    pre-stage-only 0..* MS and
    pre-stage-retrieval-key 0..* MS
* parameter[patient].name = "patient" (exactly)
* parameter[patient].name MS
* parameter[patient].value[x] only Reference($pdmp-patient)
* parameter[patient].value[x] MS
* parameter[animal-owner].name = "animal-owner" (exactly)
* parameter[animal-owner].name MS
* parameter[animal-owner].value[x] only Reference($us-core-relatedperson)
* parameter[animal-owner].value[x] MS
* parameter[authorized-practitioner].name = "authorized-practitioner" (exactly)
* parameter[authorized-practitioner].name MS
* parameter[authorized-practitioner].value[x] only Reference($us-core-practitioner)
* parameter[authorized-practitioner].value[x] MS
* parameter[authorized-practitioner-role].name = "authorized-practitioner-role" (exactly)
* parameter[authorized-practitioner-role].name MS
* parameter[authorized-practitioner-role].value[x] only Reference($us-core-practitionerrole)
* parameter[authorized-practitioner].value[x] MS
* parameter[authorized-practitioner-organization].name = "authorized-practitioner-organization" (exactly)
* parameter[authorized-practitioner-organization].name MS
* parameter[authorized-practitioner-organization].value[x] only Reference($us-core-organization)
* parameter[authorized-practitioner-organization].value[x] MS
* parameter[delegate-practitioner].name = "delegate-practitioner" (exactly)
* parameter[delegate-practitioner].name MS
* parameter[delegate-practitioner].value[x] only Reference($us-core-practitionerrole)
* parameter[delegate-practitioner].value[x] MS
* parameter[delegate-practitioner-role].name = "delegate-practitioner-role" (exactly)
* parameter[delegate-practitioner-role].name MS
* parameter[delegate-practitioner-role].value[x] only Reference($us-core-practitionerrole)
* parameter[delegate-practitioner].value[x] MS
* parameter[delegate-organization].name = "delegate-organization" (exactly)
* parameter[delegate-organization].name MS
* parameter[delegate-organization].value[x] only Reference($us-core-organization)
* parameter[delegate-organization].value[x] MS
* parameter[pre-stage-only].name = "pre-stage-only" (exactly)
* parameter[pre-stage-only].name MS
* parameter[pre-stage-only].value[x] only boolean
* parameter[pre-stage-retrieval-key].name = "pre-stage-retrieval-key" (exactly)
* parameter[pre-stage-retrieval-key].name MS
* parameter[pre-stage-retrieval-key].value[x] only string

Alias: $taxonomy = http://nucc.org/provider-taxonomy
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Instance: pdmp-history-input-parameters-1
InstanceOf: pdmp-parameters-request-operation
Usage: #example
Description: "Example of a Parameters resource used to request a patient's PDMP history"
* parameter[patient].name = "patient"
* parameter[patient].resource.id = "patient-req-1"
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
* parameter[authorized-practitioner].resource.id = "practitioner-req-1"
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
* parameter[authorized-practitioner-role].resource.id = "practitionerrole-req-1"
* parameter[authorized-practitioner-role].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole"
* parameter[authorized-practitioner-role].resource.text.status = #generated
* parameter[authorized-practitioner-role].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Adam Amster, Internal Medicine, Highview Clinic</div>"
* parameter[authorized-practitioner-role].resource.practitioner.reference = "Practitioner/practitioner-req-1"
* parameter[authorized-practitioner-role].resource.practitioner.display = "Adam Amster"
* parameter[authorized-practitioner-role].resource.organization.reference = "Organization/organization-req-1"
* parameter[authorized-practitioner-role].resource.organization.display = "Highview Clinic"
* parameter[authorized-practitioner-role].resource.telecom[0].system = #phone
* parameter[authorized-practitioner-role].resource.telecom[=].value = "951-555-5555"
* parameter[authorized-practitioner-role].resource.telecom[+].system = #email
* parameter[authorized-practitioner-role].resource.telecom[=].value = "aamster-highview-clinic@exampleemail.org"
* parameter[authorized-practitioner-organization].name = "authorized-practitioner-organization"
* parameter[authorized-practitioner-organization].resource.resourceType = "Organization"
* parameter[authorized-practitioner-organization].resource.id = "organization-req-1"
* parameter[authorized-practitioner-organization].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* parameter[authorized-practitioner-organization].resource.text.status = #generated
* parameter[authorized-practitioner-organization].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Highview Clinic</div>"
* parameter[authorized-practitioner-organization].resource.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* parameter[authorized-practitioner-organization].resource.identifier.value = "9851234689"
* parameter[authorized-practitioner-organization].resource.active = true
* parameter[authorized-practitioner-organization].resource.name = "Highview Clinic"
* parameter[authorized-practitioner-organization].resource.address.state = "MA"
* parameter[pre-stage-only].name = "pre-stage-only"
* parameter[pre-stage-only].valueBoolean = false


Instance: pdmp-history-input-parameters-2-minimum
InstanceOf: pdmp-parameters-request-operation
Usage: #example
Description: "Example of the minimal Parameters resource population to request a patient's PDMP history"
* parameter[patient].name = "patient"
* parameter[patient].resource.id = "patient-req-2"
* parameter[patient].resource.resourceType = "Patient"
* parameter[patient].resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-patient"
* parameter[patient].resource.text.status = #generated
* parameter[patient].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">August Samuels</div>"
* parameter[patient].resource.identifier.type = $v2-0203#SS "Social Security number"
* parameter[patient].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* parameter[patient].resource.identifier.value = "120-35-2435"
* parameter[patient].resource.name.family = "Samuels"
* parameter[patient].resource.name.given = "August"
* parameter[patient].resource.gender = #unknown
* parameter[patient].resource.birthDate = "1989-03-12"
* parameter[authorized-practitioner].name = "authorized-practitioner"
* parameter[authorized-practitioner].resource.id = "practitioner-req-2"
* parameter[authorized-practitioner].resource.resourceType = "Practitioner"
* parameter[authorized-practitioner].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* parameter[authorized-practitioner].resource.text.status = #generated
* parameter[authorized-practitioner].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Adam Amster MD</div>"
* parameter[authorized-practitioner].resource.identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* parameter[authorized-practitioner].resource.identifier[=].value = "1928340565"
* parameter[authorized-practitioner].resource.name.family = "Amster"
* parameter[authorized-practitioner-role].name = "authorized-practitioner-role"
* parameter[authorized-practitioner-role].resource.resourceType = "PractitionerRole"
* parameter[authorized-practitioner-role].resource.id = "practitionerrole-req-2"
* parameter[authorized-practitioner-role].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole"
* parameter[authorized-practitioner-role].resource.text.status = #generated
* parameter[authorized-practitioner-role].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Adam Amster, Internal Medicine, Highview Clinic</div>"
* parameter[authorized-practitioner-role].resource.practitioner.reference = "Practitioner/practitioner-req-2"
* parameter[authorized-practitioner-role].resource.practitioner.display = "Adam Amster"
* parameter[authorized-practitioner-role].resource.organization.reference = "Organization/organization-req-2"
* parameter[authorized-practitioner-role].resource.organization.display = "Highview Clinic"
* parameter[authorized-practitioner-role].resource.telecom[0].system = #phone
* parameter[authorized-practitioner-role].resource.telecom[=].value = "951-555-5555"
* parameter[authorized-practitioner-organization].name = "authorized-practitioner-organization"
* parameter[authorized-practitioner-organization].resource.resourceType = "Organization"
* parameter[authorized-practitioner-organization].resource.id = "organization-req-2"
* parameter[authorized-practitioner-organization].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* parameter[authorized-practitioner-organization].resource.text.status = #generated
* parameter[authorized-practitioner-organization].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Highview Clinic</div>"
* parameter[authorized-practitioner-organization].resource.active = true
* parameter[authorized-practitioner-organization].resource.name = "Highview Clinic"
* parameter[pre-stage-only].name = "pre-stage-only"
* parameter[pre-stage-only].valueBoolean = false