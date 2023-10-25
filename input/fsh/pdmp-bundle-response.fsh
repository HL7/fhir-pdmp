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

Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm

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
* entry[=].resource.text.status = #generated
* entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Patient</b><a name=\"patient-req-1\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Patient &quot;patient-req-1&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html\">US Core Patient Profile</a></p></div><p><b>identifier</b>: id:\\u00a0120-35-2435</p><p><b>name</b>: August Samuels </p><p><b>gender</b>: male</p><p><b>birthDate</b>: 1989-03-12</p><p><b>address</b>: MA 01059 </p></div>"
* entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* entry[=].resource.identifier.value = "120-35-2435"
* entry[=].resource.name.family = "Samuels"
* entry[=].resource.name.given = "August"
* entry[=].resource.gender = #male
* entry[=].resource.birthDate = "1989-03-12"
* entry[=].resource.address.state = "MA"
* entry[=].resource.address.postalCode = "01059"
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://example.org/pdmp-a/MedicationDispense/1"
* entry[=].resource.resourceType = "MedicationDispense"
* entry[=].resource.id = "pdmp-meddispense-1"
* entry[=].resource.meta.versionId = "1"
* entry[=].resource.meta.lastUpdated = "2016-12-08T06:38:52Z"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* entry[=].resource.text.status = #extensions
* entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: MedicationDispense</b><a name=\"pdmp-meddispense-1\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource MedicationDispense &quot;pdmp-meddispense-1&quot; Version &quot;1&quot; Updated &quot;2016-12-08 06:38:52+0000&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-pdmp-medicationdispense.html\">MedicationDispenseProfile</a></p></div><p><b>Refill_Number_Extensionn</b>: 5</p><p><b>status</b>: in-progress</p><p><b>medication</b>: Lantus 100 UNT/ML Injectable Solution <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-v3-rxNorm.html\">RxNorm</a>#285018)</span></p><p><b>subject</b>: <span>: Amy V. Shaw</span></p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><span>: Ronald Bone, MD</span></td></tr></table><p><b>whenHandedOver</b>: 2016-12-08 06:38:52+0000</p><h3>DosageInstructions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Sequence</b></td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>1</td><td>20 Units SC three times daily</td></tr></table></div>"
* entry[=].resource.extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-refill-number-extension"
* entry[=].resource.extension.valuePositiveInt = 5
* entry[=].resource.status = #in-progress
* entry[=].resource.medicationCodeableConcept = $rxnorm#285018 "Lantus 100 UNT/ML Injectable Solution"
* entry[=].resource.medicationCodeableConcept.text = "Lantus 100 UNT/ML Injectable Solution"
* entry[=].resource.subject.reference = "Patient/patient-res-1"
* entry[=].resource.subject.display = "August Samuels"
* entry[=].resource.performer.actor.display = "Ronald Bone, MD"
* entry[=].resource.whenHandedOver = "2016-12-08T06:38:52Z"
* entry[=].resource.dosageInstruction.sequence = 1
* entry[=].resource.dosageInstruction.text = "20 Units SC three times daily"
* entry[=].search.mode = #match