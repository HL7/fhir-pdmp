Profile: PdmpBundleResponseMessage
Parent: Bundle
Id: pdmp-bundle-response-message
Title: "PDMP Bundle - Response Message"
Description: "This profile constrains a Bundle resource for use as the response message from a PDMP--with a Parameters resource as the message's message focus."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2024-04-01T00:00:00-05:00"
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
    response-parameters 1..1 MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $pdmp-messageheader-response
* entry[response-parameters].resource 1..1 MS
* entry[response-parameters].resource only $pdmp-parameters-response


Instance: pdmp-bundle-response-message-1
InstanceOf: pdmp-bundle-response-message
Usage: #example
Description: "Example of a PDMP response message"
* meta.profile = $pdmp-bundle-response-message
* type = #message
* timestamp = "2020-03-11T08:10:17-05:00"
* entry[0].fullUrl = "urn:uuid:b5000d0c-fed9-4746-ac26-b5ce0111a2b7"
* entry[=].resource = b5000d0c-fed9-4746-ac26-b5ce0111a2b7
* entry[+].fullUrl = "urn:uuid:aecbb129-9a73-4b59-9d66-ff5cdb3f3164"
* entry[=].resource = aecbb129-9a73-4b59-9d66-ff5cdb3f3164

Instance: b5000d0c-fed9-4746-ac26-b5ce0111a2b7
InstanceOf: MessageHeader
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-response"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Event = the canonical URL for the pdmp-history operation. Focus is the Parameters resource holding response content.</div>"
* eventCoding = urn:ietf:rfc:3986#http://hl7.org/fhir/us/pdmp/OperationDefinition/pdmp-history "pdmp-history"
* source.name = "MyPDMPServer"
* source.endpoint = "https://pdmp1.testpdmp.org/"
* response.identifier = "messageheader-req-op-1"
* response.code = #ok
* focus = Reference(urn:uuid:aecbb129-9a73-4b59-9d66-ff5cdb3f3164)

Instance: aecbb129-9a73-4b59-9d66-ff5cdb3f3164
InstanceOf: pdmp-parameters-response
Usage: #inline
Description: "Example of a Parameters resource returning a patient's PDMP history"
* parameter[pdmp-history-data].name = "pdmp-history-data"
* parameter[pdmp-history-data].extension[0].url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-header-timestamp-extension"
* parameter[pdmp-history-data].extension[=].valueDateTime = "2023-12-01"
* parameter[pdmp-history-data].extension[+].url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-activity-period-extension"
* parameter[pdmp-history-data].extension[=].valuePeriod.start = "2021-12-02"
* parameter[pdmp-history-data].extension[=].valuePeriod.end = "2023-12-01"
* parameter[pdmp-history-data].resource.id = "bundle-history-data-in-msg-1"
* parameter[pdmp-history-data].resource.resourceType = "Bundle"
* parameter[pdmp-history-data].resource.meta.profile = $pdmp-bundle-history-result
* parameter[pdmp-history-data].resource.type = #collection
* parameter[pdmp-history-data].resource.entry[0].fullUrl = "urn:uuid:9ce2a97b-5cab-4986-814f-4734016e6084"
* parameter[pdmp-history-data].resource.entry[=].id = "meddispense-res-1"
* parameter[pdmp-history-data].resource.entry[=].resource.resourceType = "MedicationDispense"
* parameter[pdmp-history-data].resource.entry[=].resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* parameter[pdmp-history-data].resource.entry[=].resource.meta.source = "http://example.org/ma-pdmp"
* parameter[pdmp-history-data].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-data].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* parameter[pdmp-history-data].resource.entry[=].resource.extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-fill-number"
* parameter[pdmp-history-data].resource.entry[=].resource.extension.valuePositiveInt = 1
* parameter[pdmp-history-data].resource.entry[=].resource.status = #completed
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.coding[+] = $ndc#00093015001
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.coding[0].userSelected = true
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* parameter[pdmp-history-data].resource.entry[=].resource.subject.reference = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* parameter[pdmp-history-data].resource.entry[=].resource.subject.display = "August Samuels"
* parameter[pdmp-history-data].resource.entry[=].resource.performer.actor.reference = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* parameter[pdmp-history-data].resource.entry[=].resource.performer.actor.identifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* parameter[pdmp-history-data].resource.entry[=].resource.performer.actor.identifier.value = "999017"
* parameter[pdmp-history-data].resource.entry[=].resource.performer.actor.display = "Our Pharmacy"
* parameter[pdmp-history-data].resource.entry[=].resource.authorizingPrescription.identifier.type = $v2-0203#FILL "Filler Identifier"
* parameter[pdmp-history-data].resource.entry[=].resource.authorizingPrescription.identifier.system = "http://mypharmacysystem.com/prescriptionnumber"
* parameter[pdmp-history-data].resource.entry[=].resource.authorizingPrescription.identifier.value = "065046045550"
* parameter[pdmp-history-data].resource.entry[=].resource.quantity.value = 10
* parameter[pdmp-history-data].resource.entry[=].resource.quantity.unit = "each"
* parameter[pdmp-history-data].resource.entry[=].resource.daysSupply.value = 5
* parameter[pdmp-history-data].resource.entry[=].resource.whenPrepared = "2023-06-05"
* parameter[pdmp-history-data].resource.entry[=].resource.whenHandedOver.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[pdmp-history-data].resource.entry[=].resource.whenHandedOver.extension.valueCode = #unknown
* parameter[pdmp-history-data].resource.entry[=].resource.dosageInstruction.sequence = 1
* parameter[pdmp-history-data].resource.entry[=].resource.dosageInstruction.text = "1 tab tid prn pain"

* parameter[pdmp-history-data].resource.entry[+].fullUrl = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* parameter[pdmp-history-data].resource.entry[=].resource.id = "patient-res-1-1"
* parameter[pdmp-history-data].resource.entry[=].resource.resourceType = "Patient"
* parameter[pdmp-history-data].resource.entry[=].resource.meta.profile = $us-core-patient
* parameter[pdmp-history-data].resource.entry[=].resource.meta.source = "http://example.org/ma-pdmp"
* parameter[pdmp-history-data].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-data].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for the patient identified in the PDMP request: August Samuels</div>"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.type = $v2-0203#SS
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.value = "120-35-2435"
* parameter[pdmp-history-data].resource.entry[=].resource.name.family = "Samuels"
* parameter[pdmp-history-data].resource.entry[=].resource.name.given = "August"
* parameter[pdmp-history-data].resource.entry[=].resource.name.given = "John"
* parameter[pdmp-history-data].resource.entry[=].resource.gender = #male
* parameter[pdmp-history-data].resource.entry[=].resource.birthDate = "1989-03-12"
* parameter[pdmp-history-data].resource.entry[=].resource.address.line = "202 2nd Avenue"
* parameter[pdmp-history-data].resource.entry[=].resource.address.city = "North Amherst"
* parameter[pdmp-history-data].resource.entry[=].resource.address.state = "MA"
* parameter[pdmp-history-data].resource.entry[=].resource.address.postalCode = "01059"

* parameter[pdmp-history-data].resource.entry[+].fullUrl = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* parameter[pdmp-history-data].resource.entry[=].resource.id = "pharmacy-res-1-1"
* parameter[pdmp-history-data].resource.entry[=].resource.resourceType = "Organization"
* parameter[pdmp-history-data].resource.entry[=].resource.meta.profile = $pdmp-pharmacy
* parameter[pdmp-history-data].resource.entry[=].resource.meta.source = "http://example.org/ma-pdmp"
* parameter[pdmp-history-data].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-data].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The pharmacy that dispensed the reported medication: Our Pharmacy</div>"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier[=].value = "1669512349"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier[+].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier[=].value = "999017"
* parameter[pdmp-history-data].resource.entry[=].resource.active = true
* parameter[pdmp-history-data].resource.entry[=].resource.name = "Our Pharmacy"
* parameter[pdmp-history-data].resource.entry[=].resource.telecom[0].system = #phone
* parameter[pdmp-history-data].resource.entry[=].resource.telecom[=].value = "952-555-5555"
* parameter[pdmp-history-data].resource.entry[=].resource.telecom[+].system = #email
* parameter[pdmp-history-data].resource.entry[=].resource.telecom[=].value = "contact-our-pharmacy@email.org"
* parameter[pdmp-history-data].resource.entry[=].resource.address.line = "220 Oak St"
* parameter[pdmp-history-data].resource.entry[=].resource.address.city = "Minneapolis"
* parameter[pdmp-history-data].resource.entry[=].resource.address.state = "MN"
* parameter[pdmp-history-data].resource.entry[=].resource.address.postalCode = "55008"
* parameter[pdmp-history-data].resource.entry[=].resource.address.country = "USA"