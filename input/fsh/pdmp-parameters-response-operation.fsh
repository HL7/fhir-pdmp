Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-relatedperson = http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-practitionerrole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $pdmp-patient = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-patient
Alias: $pdmp-pharmacy = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-organization-pharmacy
Alias: $pdmp-bundle-history-result = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-history-result

Profile: PdmpParametersResponseOperation
Parent: Parameters
Id: pdmp-parameters-response-operation
Title: "PDMP Parameters - Response Operation"
Description: "This profile tailors the Parameters resource to convey PDMP Request outputs."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.lastUpdated = "2023-10-05T00:00:00-05:00"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-11-29T00:00:00-05:00"
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
    pdmp-history-result 1..1 MS and
    pre-stage-retrieval-key 0..* MS
* parameter[pdmp-history-result].name = "pdmp-history-result" (exactly)
* parameter[pdmp-history-result].name MS
* parameter[pdmp-history-result].value[x] only Reference($pdmp-bundle-history-result)
* parameter[pdmp-history-result].value[x] MS
* parameter[pre-stage-retrieval-key].name = "pre-stage-retrieval-key" (exactly)
* parameter[pre-stage-retrieval-key].name MS
* parameter[pre-stage-retrieval-key].value[x] only string
* parameter[pre-stage-retrieval-key].value[x] MS

Alias: $taxonomy = http://nucc.org/provider-taxonomy
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Instance: pdmp-history-output-parameters-1
InstanceOf: pdmp-parameters-response-operation
Usage: #example
Description: "Example of a Parameters resource used to respond to a request a patient's PDMP history"
* parameter[pdmp-history-result].name = "pdmp-history-result"
* parameter[pdmp-history-result].resource.id = "bundle-res-1"
* parameter[pdmp-history-result].resource.resourceType = "Bundle"
* parameter[pdmp-history-result].resource.meta.profile = $pdmp-bundle-history-result
* parameter[pdmp-history-result].resource.type = #collection

* parameter[pdmp-history-result].resource.entry[0].fullUrl = "urn:uuid:9ce2a97b-5cab-4986-814f-4734016e6084"
* parameter[pdmp-history-result].resource.entry[=].id = "meddispense-res-1-op"
* parameter[pdmp-history-result].resource.entry[=].resource.resourceType = "MedicationDispense"
* parameter[pdmp-history-result].resource.entry[=].resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* parameter[pdmp-history-result].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-result].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* parameter[pdmp-history-result].resource.entry[=].resource.extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-refill-number"
* parameter[pdmp-history-result].resource.entry[=].resource.extension.valuePositiveInt = 1
* parameter[pdmp-history-result].resource.entry[=].resource.identifier.type = $v2-0203#FILL "Filler Identifier"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier.system = "http://ourpharmacy.com/fillnumber"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier.value = "2000353"
* parameter[pdmp-history-result].resource.entry[=].resource.status = #completed
* parameter[pdmp-history-result].resource.entry[=].resource.medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* parameter[pdmp-history-result].resource.entry[=].resource.medicationCodeableConcept.coding[+] = $ndc#00093015001
* parameter[pdmp-history-result].resource.entry[=].resource.medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* parameter[pdmp-history-result].resource.entry[=].resource.subject.reference = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* parameter[pdmp-history-result].resource.entry[=].resource.subject.display = "August Samuels"
* parameter[pdmp-history-result].resource.entry[=].resource.performer.actor.reference = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* parameter[pdmp-history-result].resource.entry[=].resource.performer.actor.identifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* parameter[pdmp-history-result].resource.entry[=].resource.performer.actor.identifier.value = "999017"
* parameter[pdmp-history-result].resource.entry[=].resource.performer.actor.display = "Our Pharmacy"
* parameter[pdmp-history-result].resource.entry[=].resource.authorizingPrescription.identifier.type = $v2-0203#PLAC "Placer Identifier"
* parameter[pdmp-history-result].resource.entry[=].resource.authorizingPrescription.identifier.system = "http://myprescribingsystem.com/ordernumber"
* parameter[pdmp-history-result].resource.entry[=].resource.authorizingPrescription.identifier.value = "605153"
* parameter[pdmp-history-result].resource.entry[=].resource.quantity.value = 10 
* parameter[pdmp-history-result].resource.entry[=].resource.quantity.unit = "each"
* parameter[pdmp-history-result].resource.entry[=].resource.daysSupply.value = 5
* parameter[pdmp-history-result].resource.entry[=].resource.whenPrepared = "2023-06-05"
* parameter[pdmp-history-result].resource.entry[=].resource.whenHandedOver.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[pdmp-history-result].resource.entry[=].resource.whenHandedOver.extension.valueCode = #unknown
* parameter[pdmp-history-result].resource.entry[=].resource.dosageInstruction.sequence = 1
* parameter[pdmp-history-result].resource.entry[=].resource.dosageInstruction.text = "1 tab tid prn pain"

* parameter[pdmp-history-result].resource.entry[+].fullUrl = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* parameter[pdmp-history-result].resource.entry[=].resource.id = "patient-res-1-1-op"
* parameter[pdmp-history-result].resource.entry[=].resource.resourceType = "Patient"
* parameter[pdmp-history-result].resource.entry[=].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* parameter[pdmp-history-result].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-result].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for the patient identified in the PDMP request: August Samuels</div>"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier.value = "120-35-2435"
* parameter[pdmp-history-result].resource.entry[=].resource.name.family = "Samuels"
* parameter[pdmp-history-result].resource.entry[=].resource.name.given = "August"
* parameter[pdmp-history-result].resource.entry[=].resource.gender = #male
* parameter[pdmp-history-result].resource.entry[=].resource.birthDate = "1989-03-12"
* parameter[pdmp-history-result].resource.entry[=].resource.address.state = "MA"
* parameter[pdmp-history-result].resource.entry[=].resource.address.postalCode = "01059"

* parameter[pdmp-history-result].resource.entry[+].fullUrl = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* parameter[pdmp-history-result].resource.entry[=].resource.id = "pharmacy-res-1-1-op"
* parameter[pdmp-history-result].resource.entry[=].resource.resourceType = "Organization"
* parameter[pdmp-history-result].resource.entry[=].resource.meta.profile = $pdmp-pharmacy
* parameter[pdmp-history-result].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-result].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The pharmacy that dispensed the reported medication: Our Pharmacy</div>"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier[=].value = "1669512349"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier[+].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier[=].value = "999017"
* parameter[pdmp-history-result].resource.entry[=].resource.active = true
* parameter[pdmp-history-result].resource.entry[=].resource.name = "Our Pharmacy"
* parameter[pdmp-history-result].resource.entry[=].resource.telecom[0].system = #phone
* parameter[pdmp-history-result].resource.entry[=].resource.telecom[=].value = "952-555-5555"
* parameter[pdmp-history-result].resource.entry[=].resource.telecom[+].system = #email
* parameter[pdmp-history-result].resource.entry[=].resource.telecom[=].value = "contact-our-pharmacy@email.org"
* parameter[pdmp-history-result].resource.entry[=].resource.address.line = "220 Oak St"
* parameter[pdmp-history-result].resource.entry[=].resource.address.city = "Minneapolis"
* parameter[pdmp-history-result].resource.entry[=].resource.address.state = "MN"
* parameter[pdmp-history-result].resource.entry[=].resource.address.postalCode = "55008"
* parameter[pdmp-history-result].resource.entry[=].resource.address.country = "USA"


Instance: pdmp-history-output-parameters-2-minimal-history
InstanceOf: pdmp-parameters-response-operation
Usage: #example
Description: "Example of minimal population of a Parameters resource used to respond when a patient has PDMP history"
* parameter[pdmp-history-result].name = "pdmp-history-result"
* parameter[pdmp-history-result].resource.id = "bundle-res-2"
* parameter[pdmp-history-result].resource.resourceType = "Bundle"
* parameter[pdmp-history-result].resource.meta.profile = $pdmp-bundle-history-result
* parameter[pdmp-history-result].resource.type = #collection

* parameter[pdmp-history-result].resource.entry[0].fullUrl = "urn:uuid:9ce2a97b-5cab-4986-814f-4734016e6084"
* parameter[pdmp-history-result].resource.entry[=].id = "meddispense-res-2-op"
* parameter[pdmp-history-result].resource.entry[=].resource.resourceType = "MedicationDispense"
* parameter[pdmp-history-result].resource.entry[=].resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* parameter[pdmp-history-result].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-result].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* parameter[pdmp-history-result].resource.entry[=].resource.status = #completed
* parameter[pdmp-history-result].resource.entry[=].resource.medicationCodeableConcept.coding[0] = $ndc#00093015001
* parameter[pdmp-history-result].resource.entry[=].resource.medicationCodeableConcept.coding[0].userSelected = true
* parameter[pdmp-history-result].resource.entry[=].resource.medicationCodeableConcept.coding[+] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* parameter[pdmp-history-result].resource.entry[=].resource.medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* parameter[pdmp-history-result].resource.entry[=].resource.subject.reference = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* parameter[pdmp-history-result].resource.entry[=].resource.subject.display = "August Samuels"
* parameter[pdmp-history-result].resource.entry[=].resource.performer.actor.reference = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* parameter[pdmp-history-result].resource.entry[=].resource.quantity.value = 10 
* parameter[pdmp-history-result].resource.entry[=].resource.quantity.unit = "each"
* parameter[pdmp-history-result].resource.entry[=].resource.daysSupply.value = 5
* parameter[pdmp-history-result].resource.entry[=].resource.whenPrepared = "2023-06-05"
* parameter[pdmp-history-result].resource.entry[=].resource.whenHandedOver.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[pdmp-history-result].resource.entry[=].resource.whenHandedOver.extension.valueCode = #unknown

* parameter[pdmp-history-result].resource.entry[+].fullUrl = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* parameter[pdmp-history-result].resource.entry[=].resource.id = "patient-res-1-2-op"
* parameter[pdmp-history-result].resource.entry[=].resource.resourceType = "Patient"
* parameter[pdmp-history-result].resource.entry[=].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* parameter[pdmp-history-result].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-result].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for the patient identified in the PDMP request: August Samuels</div>"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier.value = "120-35-2435"
* parameter[pdmp-history-result].resource.entry[=].resource.name.family = "Samuels"
* parameter[pdmp-history-result].resource.entry[=].resource.name.given = "August"
* parameter[pdmp-history-result].resource.entry[=].resource.gender = #unknown
* parameter[pdmp-history-result].resource.entry[=].resource.birthDate = "1989-03-12"

* parameter[pdmp-history-result].resource.entry[+].fullUrl = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* parameter[pdmp-history-result].resource.entry[=].resource.id = "pharmacy-res-2-1-op"
* parameter[pdmp-history-result].resource.entry[=].resource.resourceType = "Organization"
* parameter[pdmp-history-result].resource.entry[=].resource.meta.profile = $pdmp-pharmacy
* parameter[pdmp-history-result].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-result].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The pharmacy that dispensed the reported medication: Our Pharmacy</div>"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* parameter[pdmp-history-result].resource.entry[=].resource.identifier[=].value = "1669512349"
* parameter[pdmp-history-result].resource.entry[=].resource.active = true
* parameter[pdmp-history-result].resource.entry[=].resource.name = "Our Pharmacy"


Instance: pdmp-history-output-parameters-3-error-retrieving-data
InstanceOf: pdmp-parameters-response-operation
Usage: #example
Description: "Example of population of the Parameters resource when a processing exception causes no PDMP history to be returned"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response-operation"
* parameter.name = "pdmp-history-result"
* parameter.resource.resourceType = "Bundle"
* parameter.resource.id = "bundle-res-3"
* parameter.resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-history-result"
* parameter.resource.type = #collection
* parameter.resource.entry.fullUrl = "http://example.org/pdmp-a/OperationOutcome/100"
* parameter.resource.entry.resource.resourceType = "OperationOutcome"
* parameter.resource.entry.resource.id = "100"
* parameter.resource.entry.resource.text.status = #generated
* parameter.resource.entry.resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">An error occurred during processing: The state PDMP system did not respond within the timeout period</div>"
* parameter.resource.entry.resource.issue.severity = #error
* parameter.resource.entry.resource.issue.code = #processing
* parameter.resource.entry.resource.issue.diagnostics = "The state PDMP system did not respond within the timeout period"
