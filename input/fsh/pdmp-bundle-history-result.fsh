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
* entry 1..* MS
* entry ^comment = "The result bundle may contain one or more entries. If no PDMP history can be returned for the requested patient, the bundle SHALL NOT be generated."
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
    patient 0..* MS and
    medicationdispense 0..* MS and
    medicationadministration 0..* MS and
    pharmacy 0..* MS and
    medication 0..* MS and
    medicationrequest 0..* MS and
    practitioner 0..* MS and
    practitionerrole 0..* MS and
    alert 0..*
* entry[patient].resource 1..1 MS
* entry[patient].resource only $pdmp-patient
* entry[medicationdispense].resource 1..1 MS
* entry[medicationdispense].resource only $pdmp-medicationdispense
* entry[medicationadministration].resource 1..1 MS
* entry[medicationadministration].resource only $pdmp-medicationadministration
* entry[pharmacy].resource 1..1 MS
* entry[pharmacy].resource only $pdmp-pharmacy
* entry[medication].resource 1..1 MS
* entry[medication].resource only $us-core-medication
* entry[medicationrequest].resource 1..1 MS
* entry[medicationrequest].resource only $us-core-medicationrequest
* entry[practitioner].resource 1..1 MS
* entry[practitioner].resource only $us-core-practitioner
* entry[practitionerrole].resource 1..1 MS
* entry[practitionerrole].resource only $us-core-practitionerrole
* entry[alert].resource 1..1 MS
* entry[alert].resource only $detectedissue


Instance: pdmp-bundle-history-result-1
InstanceOf: pdmp-bundle-history-result
Usage: #example
Description: "Example of a Bundle resource used to transmit a patient's PDMP history"
* id = "bundle-res-1"
* meta.profile = $pdmp-bundle-history-result
* type = #collection

* entry[0].fullUrl = "urn:uuid:9ce2a97b-5cab-4986-814f-4734016e6084"
* entry[=].id = "meddispense-res-1"
* entry[=].resource.resourceType = "MedicationDispense"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* entry[=].resource.text.status = #generated
* entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* entry[=].resource.extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-fill-number"
* entry[=].resource.extension.valuePositiveInt = 1
* entry[=].resource.identifier.type = $v2-0203#FILL "Filler Identifier"
* entry[=].resource.identifier.system = "http://ourpharmacy.com/fillnumber"
* entry[=].resource.identifier.value = "2000353"
* entry[=].resource.status = #completed
* entry[=].resource.medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* entry[=].resource.medicationCodeableConcept.coding[+] = $ndc#00093015001
* entry[=].resource.medicationCodeableConcept.coding[=].userSelected = true
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
* entry[=].resource.id = "patient-res-1-1"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|6.1.0"
* entry[=].resource.text.status = #generated
* entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for the patient identified in the PDMP request: August Samuels</div>"
* entry[=].resource.identifier.type = $v2-0203#SS
* entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* entry[=].resource.identifier.value = "120-35-2435"
* entry[=].resource.name.family = "Samuels"
* entry[=].resource.name.given = "August"
* entry[=].resource.gender = #male
* entry[=].resource.birthDate = "1989-03-12"
* entry[=].resource.address.state = "MA"
* entry[=].resource.address.postalCode = "01059"

* entry[+].fullUrl = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* entry[=].resource.id = "pharmacy-res-1-1"
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