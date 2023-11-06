Alias: $pdmp-messageheader-response = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-response
Alias: $pdmp-parameters-response = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-practitionerrole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization

Profile: PdmpBundleResponse
Parent: Bundle
Id: pdmp-bundle-response
Title: "PDMP Bundle - Response Message"
Description: "This profile constrains a Bundle resource for use as the response message to a PDMP--with a results Bundle resource as the message's message focus."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response"
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
    bundle 1..1 MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $pdmp-messageheader-response
* entry[bundle].resource 1..1 MS
* entry[bundle].resource only Bundle

Alias: $pdmp-event-type = http://hl7.org/fhir/us/pdmp/CodeSystem/pdmp-event-type
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $ndc = http://hl7.org/fhir/sid/ndc
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type

Instance: pdmp-bundle-response-1
InstanceOf: pdmp-bundle-response
Usage: #example
Description: "Example of a PDMP response message"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response"
* type = #message
* timestamp = "2020-03-11T08:10:17-05:00"
* entry[0].fullUrl = "urn:uuid:d0b62e34-db4a-4ef7-832c-52cb4c7f9289"
* entry[=].resource = 72f68739-f49a-4536-b8d4-15f57197abde
* entry[+].fullUrl = "urn:uuid:b5000d0c-fed9-4746-ac26-b5ce0111a2b7"
* entry[=].resource = b5000d0c-fed9-4746-ac26-b5ce0111a2b7

Instance: 72f68739-f49a-4536-b8d4-15f57197abde
InstanceOf: MessageHeader
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-response"
* eventCoding = $pdmp-event-type#pdmp-patient-response "PDMP Patient Response"
* source.name = "MyPDMPServer"
* source.endpoint = "http://StatePDMPServer/StatePDMP/api"
* response.identifier = "5065aa9f-bd6d-49a8-924c-5d00f5d0b997"
* response.code = #ok
* focus = Reference(urn:uuid:b5000d0c-fed9-4746-ac26-b5ce0111a2b7)

Instance: b5000d0c-fed9-4746-ac26-b5ce0111a2b7
InstanceOf: Bundle
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-search-result"
* type = #searchset
* total = 2
* entry[0].fullUrl = "http://example.org/pdmp-a/Patient/patient-res-1"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.id = "patient-res-1"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* entry[=].resource.identifier.value = "120-35-2435"
* entry[=].resource.name.family = "Samuels"
* entry[=].resource.name.given = "August"
* entry[=].resource.gender = #male
* entry[=].resource.birthDate = "1989-03-12"
* entry[=].resource.address.state = "MA"
* entry[=].resource.address.postalCode = "01059"
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://example.org/pdmp-a/MedicationDispense/meddispense-res-1-1"
* entry[=].resource.resourceType = "MedicationDispense"
* entry[=].resource.id = "meddispense-res-1-1"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* entry[=].resource.extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-refill-number"
* entry[=].resource.extension.valuePositiveInt = 1
* entry[=].resource.identifier.type = $v2-0203#FILL "Filler Identifier"
* entry[=].resource.identifier.system = "http://ourpharmacy.com/fillnumber"
* entry[=].resource.identifier.value = "2000353"
* entry[=].resource.status = #completed
* entry[=].resource.medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* entry[=].resource.medicationCodeableConcept.coding[+] = $ndc#00093015001
* entry[=].resource.medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* entry[=].resource.subject.reference = "Patient/patient-res-1"
* entry[=].resource.subject.display = "August Samuels"
* entry[=].resource.performer.actor.reference = "Organization/org-res-1-1"
* entry[=].resource.performer.actor.identifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* entry[=].resource.performer.actor.identifier.value = "999017"
* entry[=].resource.performer.actor.display = "Our Pharmacy"
* entry[=].resource.authorizingPrescription.identifier.type = $v2-0203#PLAC "Placer Identifier"
* entry[=].resource.authorizingPrescription.identifier.system = "http://myprescribingsystem.com/ordernumber"
* entry[=].resource.authorizingPrescription.identifier.value = "605153"
* entry[=].resource.quantity = 10 '{each}' "each"
* entry[=].resource.whenHandedOver = "2023-06-05"
* entry[=].resource.dosageInstruction.sequence = 1
* entry[=].resource.dosageInstruction.text = "1 tab tid prn pain"
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://example.org/pdmp-a/Organization/org-res-1-1"
* entry[=].resource.resourceType = "Organization"
* entry[=].resource.id = "org-res-1-1"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* entry[=].resource.identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* entry[=].resource.identifier[=].value = "1669512349"
* entry[=].resource.identifier[+].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* entry[=].resource.identifier[=].value = "999017"
* entry[=].resource.active = true
* entry[=].resource.type = $organization-type#prov "Healthcare Provider"
* entry[=].resource.name = "Our Pharmacy"
* entry[=].resource.telecom[0].system = #phone
* entry[=].resource.telecom[=].value = "952-555-5555"
* entry[=].resource.telecom[+].system = #email
* entry[=].resource.telecom[=].value = "contact-our-pharmacy@exampleemail.org"
* entry[=].resource.address.line = "220 Oak St"
* entry[=].resource.address.city = "Minneapolis"
* entry[=].resource.address.state = "MN"
* entry[=].resource.address.postalCode = "55008"
* entry[=].resource.address.country = "USA"
* entry[=].search.mode = #match