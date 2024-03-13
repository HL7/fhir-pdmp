Profile: PdmpParametersResponse
Parent: Parameters
Id: pdmp-parameters-response
Title: "PDMP Parameters - Response"
Description: "This profile tailors the Parameters resource to convey PDMP History operation outputs."
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
* parameter 1..4 MS
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.ordered = false
* parameter ^slicing.rules = #open
* parameter contains
    pdmp-history-data 0..1 MS and
    pdmp-history-link 0..1 MS and
    pre-stage-retrieval-key 0..1 MS and
    outcome 0..1 MS
* parameter[pdmp-history-data].name = "pdmp-history-data" (exactly)
* parameter[pdmp-history-data].name MS
* parameter[pdmp-history-data].value[x] only Reference($pdmp-bundle-history-result)
* parameter[pdmp-history-data].value[x] MS
* parameter[pdmp-history-link].name = "pdmp-history-link" (exactly)
* parameter[pdmp-history-link].name MS
* parameter[pdmp-history-link].value[x] only url
* parameter[pdmp-history-link].value[x] MS
* parameter[pre-stage-retrieval-key].name = "pre-stage-retrieval-key" (exactly)
* parameter[pre-stage-retrieval-key].name MS
* parameter[pre-stage-retrieval-key].value[x] only string
* parameter[pre-stage-retrieval-key].value[x] MS
* parameter[outcome].name = "outcome" (exactly)
* parameter[outcome].name MS
* parameter[outcome].value[x] only Reference($operation-outcome)
* parameter[outcome].value[x] MS


Instance: pdmp-history-output-parameters-1
InstanceOf: pdmp-parameters-response
Usage: #example
Description: "Example of a Parameters resource used to respond to a request a patient's PDMP history"
* parameter[pdmp-history-data].name = "pdmp-history-data"
* parameter[pdmp-history-data].resource.id = "bundle-res-1"
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
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.type = $v2-0203#FILL "Filler Identifier"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.system = "http://ourpharmacy.com/fillnumber"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.value = "2000353"
* parameter[pdmp-history-data].resource.entry[=].resource.status = #completed
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.coding[+] = $ndc#00093015001
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.coding[=].userSelected = true
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* parameter[pdmp-history-data].resource.entry[=].resource.subject.reference = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* parameter[pdmp-history-data].resource.entry[=].resource.subject.display = "August Samuels"
* parameter[pdmp-history-data].resource.entry[=].resource.performer.actor.reference = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* parameter[pdmp-history-data].resource.entry[=].resource.performer.actor.identifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* parameter[pdmp-history-data].resource.entry[=].resource.performer.actor.identifier.value = "999017"
* parameter[pdmp-history-data].resource.entry[=].resource.performer.actor.display = "Our Pharmacy"
* parameter[pdmp-history-data].resource.entry[=].resource.authorizingPrescription.identifier.type = $v2-0203#FILL "Filler Identifier"
* parameter[pdmp-history-data].resource.entry[=].resource.authorizingPrescription.identifier.system = "http://mypharmacysystem.com/prescriptionnumber"
* parameter[pdmp-history-data].resource.entry[=].resource.authorizingPrescription.identifier.value = "000022056"
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
* parameter[pdmp-history-data].resource.entry[=].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|6.1.0"
* parameter[pdmp-history-data].resource.entry[=].resource.meta.source = "http://example.org/ma-pdmp"
* parameter[pdmp-history-data].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-data].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for the patient identified in the PDMP request: August Samuels</div>"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.type = $v2-0203#SS
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.value = "120-35-2435"
* parameter[pdmp-history-data].resource.entry[=].resource.name.family = "Samuels"
* parameter[pdmp-history-data].resource.entry[=].resource.name.given = "August"
* parameter[pdmp-history-data].resource.entry[=].resource.gender = #male
* parameter[pdmp-history-data].resource.entry[=].resource.birthDate = "1989-03-12"
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


Instance: pdmp-history-output-parameters-2-minimal-history
InstanceOf: pdmp-parameters-response
Usage: #example
Description: "Example of minimal population of a Parameters resource used to respond when a patient has PDMP history"
* parameter[pdmp-history-data].name = "pdmp-history-data"
* parameter[pdmp-history-data].resource.id = "bundle-res-2"
* parameter[pdmp-history-data].resource.resourceType = "Bundle"
* parameter[pdmp-history-data].resource.meta.profile = $pdmp-bundle-history-result
* parameter[pdmp-history-data].resource.type = #collection

* parameter[pdmp-history-data].resource.entry[0].fullUrl = "urn:uuid:9ce2a97b-5cab-4986-814f-4734016e6084"
* parameter[pdmp-history-data].resource.entry[=].id = "meddispense-res-2"
* parameter[pdmp-history-data].resource.entry[=].resource.resourceType = "MedicationDispense"
* parameter[pdmp-history-data].resource.entry[=].resource.meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* parameter[pdmp-history-data].resource.entry[=].resource.meta.source = "http://example.org/ma-pdmp"
* parameter[pdmp-history-data].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-data].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* parameter[pdmp-history-data].resource.entry[=].resource.status = #completed
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.coding[0] = $ndc#00093015001
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.coding[0].userSelected = true
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.coding[+] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* parameter[pdmp-history-data].resource.entry[=].resource.medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* parameter[pdmp-history-data].resource.entry[=].resource.subject.reference = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* parameter[pdmp-history-data].resource.entry[=].resource.subject.display = "August Samuels"
* parameter[pdmp-history-data].resource.entry[=].resource.performer.actor.reference = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* parameter[pdmp-history-data].resource.entry[=].resource.authorizingPrescription.identifier.type = $v2-0203#FILL "Filler Identifier"
* parameter[pdmp-history-data].resource.entry[=].resource.authorizingPrescription.identifier.system = "http://mypharmacysystem.com/prescriptionnumber"
* parameter[pdmp-history-data].resource.entry[=].resource.authorizingPrescription.identifier.value = "065046045550"
* parameter[pdmp-history-data].resource.entry[=].resource.quantity.value = 10 
* parameter[pdmp-history-data].resource.entry[=].resource.quantity.unit = "each"
* parameter[pdmp-history-data].resource.entry[=].resource.daysSupply.value = 5
* parameter[pdmp-history-data].resource.entry[=].resource.whenPrepared = "2023-06-05"
* parameter[pdmp-history-data].resource.entry[=].resource.whenHandedOver.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[pdmp-history-data].resource.entry[=].resource.whenHandedOver.extension.valueCode = #unknown

* parameter[pdmp-history-data].resource.entry[+].fullUrl = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* parameter[pdmp-history-data].resource.entry[=].resource.id = "patient-res-1-2"
* parameter[pdmp-history-data].resource.entry[=].resource.resourceType = "Patient"
* parameter[pdmp-history-data].resource.entry[=].resource.meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|6.1.0"
* parameter[pdmp-history-data].resource.entry[=].resource.meta.source = "http://example.org/ma-pdmp"
* parameter[pdmp-history-data].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-data].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for the patient identified in the PDMP request: August Samuels</div>"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.type = $v2-0203#SS
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier.value = "120-35-2435"
* parameter[pdmp-history-data].resource.entry[=].resource.name.family = "Samuels"
* parameter[pdmp-history-data].resource.entry[=].resource.name.given = "August"
* parameter[pdmp-history-data].resource.entry[=].resource.gender = #unknown
* parameter[pdmp-history-data].resource.entry[=].resource.birthDate = "1989-03-12"

* parameter[pdmp-history-data].resource.entry[+].fullUrl = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* parameter[pdmp-history-data].resource.entry[=].resource.id = "pharmacy-res-2-1"
* parameter[pdmp-history-data].resource.entry[=].resource.resourceType = "Organization"
* parameter[pdmp-history-data].resource.entry[=].resource.meta.profile = $pdmp-pharmacy
* parameter[pdmp-history-data].resource.entry[=].resource.meta.source = "http://example.org/ma-pdmp"
* parameter[pdmp-history-data].resource.entry[=].resource.text.status = #generated
* parameter[pdmp-history-data].resource.entry[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The pharmacy that dispensed the reported medication: Our Pharmacy</div>"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* parameter[pdmp-history-data].resource.entry[=].resource.identifier[=].value = "1669512349"
* parameter[pdmp-history-data].resource.entry[=].resource.active = true
* parameter[pdmp-history-data].resource.entry[=].resource.name = "Our Pharmacy"


Instance: pdmp-history-output-parameters-3-patient-not-found
InstanceOf: pdmp-parameters-response
Usage: #example
Description: "Example of population of the Parameters resource when the requested patient is not found and no PDMP history is returned"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response"
* parameter.name = "outcome"
* parameter.resource.resourceType = "OperationOutcome"
* parameter.resource.id = "100"
* parameter.resource.text.status = #generated
* parameter.resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No PDMP history was found for the submitted patient</div>"
* parameter.resource.issue.severity = #information
* parameter.resource.issue.code = #informational
* parameter.resource.issue.details = $pmix-response-status-cs#no-data "No Data"
* parameter.resource.issue.diagnostics = "No PDMP history was found for the submitted patient"

Instance: pdmp-history-output-parameters-4-link-response
InstanceOf: pdmp-parameters-response
Usage: #example
Description: "Example of population of the Parameters resource when a link to the PDMP history is returned"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response"
* parameter.name = "pdmp-history-link"
* parameter.valueUrl = "http://pdmp.example.org/response/013050650054450"

Instance: pdmp-history-output-parameters-5-pre-stage-response
InstanceOf: pdmp-parameters-response
Usage: #example
Description: "Example of population of the Parameters resource when pre-staging of PDMP history was requested"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response"
* parameter[0].name = "pre-stage-retrieval-key"
* parameter[=].valueString = "0938e860-2f61-433b-982a-9044bd2f42d5"
* parameter[+].name = "outcome"
* parameter[=].resource.resourceType = "OperationOutcome"
* parameter[=].resource.id = "4d76ff54-21d1-419f-9ec1-233cfbd45b0e"
* parameter[=].resource.text.status = #generated
* parameter[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pre-stage request was accepted successfully</div>"
* parameter[=].resource.issue.severity = #information
* parameter[=].resource.issue.code = #informational
* parameter[=].resource.issue.details = $pdmp-response-status-cs#pre-stage-accepted "Pre-Stage Request Accepted"

Instance: pdmp-history-output-parameters-6-non-fatal-warning
InstanceOf: pdmp-parameters-response
Usage: #example
Description: "Example of population of the Parameters resource when a link to the PDMP history is returned with a warning"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response"
* parameter[0].name = "pdmp-history-link"
* parameter[=].valueUrl = "http://pdmp.example.org/response/976a5495-72b6-4ed2-b913-a7dc21e7e5e0"
* parameter[+].name = "outcome"
* parameter[=].resource.resourceType = "OperationOutcome"
* parameter[=].resource.id = "86b95d37-653b-4d46-9af1-02f43eba4f72"
* parameter[=].resource.text.status = #generated
* parameter[=].resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Incomplete results: History includes only information from the MN PDMP. Iowa PDMP did not respond within the timeout window</div>"
* parameter[=].resource.issue.severity = #warning
* parameter[=].resource.issue.code = #transient
* parameter[=].resource.issue.details = $pmix-response-status-cs#error "Error"
* parameter[=].resource.issue.diagnostics = "Incomplete results: History includes only information from the MN PDMP. Iowa PDMP did not respond within the timeout window"
