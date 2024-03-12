Profile: PdmpBundleHistoryResult
Parent: Bundle
Id: pdmp-bundle-history-result
Title: "PDMP Bundle - History Result"
Description: "This profile constrains a Bundle resource to carry the history details and/or processing outcome for a PDMP request"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2023-12-03T00:00:00-05:00"
* ^publisher = "HL7 International - Pharmacy"
* ^contact[0].name = "HL7 International - Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom[0].system = #email
* ^contact[=].telecom[=].value = "frank.mckinney@pocp.com"
* ^contact[=].telecom[+].system = #email
* ^contact[=].telecom[=].value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* type only code
* type = #collection (exactly)
* type MS
* total MS
* entry MS
* entry ^comment = "The result bundle may contain one or more entries. If no PDMP history can be returned for the requested patient, the bundle SHALL include an OperationOutcome describing the reason--as a warning or error"
* entry.resource 1.. MS
* entry.search MS
* entry.search.mode MS
* entry.request 0..0
* entry.request ^mustSupport = false
* entry.response 0..0
* entry.response ^mustSupport = false

Alias: $pdmp-bundle-history-result = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-history-result
Alias: $taxonomy = http://nucc.org/provider-taxonomy
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Instance: pdmp-bundle-history-result-1
InstanceOf: pdmp-bundle-history-result
Usage: #example
Description: "Example of a Bundle resource used to transmit a patient's PDMP history"
* id = "bundle-res-1"
* meta.profile = $pdmp-bundle-history-result
* type = #collection

* entry[0].fullUrl = "urn:uuid:9ce2a97b-5cab-4986-814f-4734016e6084"
* entry[=].id = "meddispense-res-1-op"
* entry[=].resource.resourceType = "MedicationDispense"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* entry[=].resource.text.status = #generated
* entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* entry[=].resource.extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-refill-number"
* entry[=].resource.extension.valuePositiveInt = 1
* entry[=].resource.identifier.type = $v2-0203#FILL "Filler Identifier"
* entry[=].resource.identifier.system = "http://ourpharmacy.com/fillnumber"
* entry[=].resource.identifier.value = "2000353"
* entry[=].resource.status = #completed
* entry[=].resource.medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* entry[=].resource.medicationCodeableConcept.coding[+] = $ndc#00093015001
* entry[=].resource.medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* entry[=].resource.subject.reference = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* entry[=].resource.subject.display = "August Samuels"
* entry[=].resource.performer.actor.reference = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* entry[=].resource.performer.actor.identifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* entry[=].resource.performer.actor.identifier.value = "999017"
* entry[=].resource.performer.actor.display = "Our Pharmacy"
* entry[=].resource.authorizingPrescription.identifier.type = $v2-0203#PLAC "Placer Identifier"
* entry[=].resource.authorizingPrescription.identifier.system = "http://myprescribingsystem.com/ordernumber"
* entry[=].resource.authorizingPrescription.identifier.value = "605153"
* entry[=].resource.quantity.value = 10 
* entry[=].resource.quantity.unit = "each"
* entry[=].resource.daysSupply.value = 5
* entry[=].resource.whenPrepared = "2023-06-05"
* entry[=].resource.whenHandedOver.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* entry[=].resource.whenHandedOver.extension.valueCode = #unknown
* entry[=].resource.dosageInstruction.sequence = 1
* entry[=].resource.dosageInstruction.text = "1 tab tid prn pain"

* entry[+].fullUrl = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* entry[=].resource.id = "patient-res-1-1-op"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* entry[=].resource.text.status = #generated
* entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for August Samuels as associated with a medication dispense</div>"
* entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* entry[=].resource.identifier.value = "120-35-2435"
* entry[=].resource.name.family = "Samuels"
* entry[=].resource.name.given = "August"
* entry[=].resource.gender = #male
* entry[=].resource.birthDate = "1989-03-12"
* entry[=].resource.address.state = "MA"
* entry[=].resource.address.postalCode = "01059"

* entry[+].fullUrl = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* entry[=].resource.id = "pharmacy-res-1-1-op"
* entry[=].resource.resourceType = "Organization"
* entry[=].resource.meta.profile = $pdmp-pharmacy
* entry[=].resource.text.status = #generated
* entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The pharmacy that dispensed the reported medication: Our Pharmacy</div>"
* entry[=].resource.identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* entry[=].resource.identifier[=].value = "1669512349"
* entry[=].resource.identifier[+].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* entry[=].resource.identifier[=].value = "999017"
* entry[=].resource.active = true
* entry[=].resource.name = "Our Pharmacy"
* entry[=].resource.telecom[0].system = #phone
* entry[=].resource.telecom[=].value = "952-555-5555"
* entry[=].resource.telecom[+].system = #email
* entry[=].resource.telecom[=].value = "contact-our-pharmacy@email.org"
* entry[=].resource.address.line = "220 Oak St"
* entry[=].resource.address.city = "Minneapolis"
* entry[=].resource.address.state = "MN"
* entry[=].resource.address.postalCode = "55008"
* entry[=].resource.address.country = "USA"