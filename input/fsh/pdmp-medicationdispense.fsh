Invariant: pdmp-dispense-performer
Severity: #error
Description: "MedicationDispense SHALL include a performer actor reference or performer actor identifier"
Expression: "reference.exists() or identifier.exists()"

Profile: PdmpMedicationDispense
Parent: $us-core-medicationdispense
Id: pdmp-medicationdispense
Title: "PDMP MedicationDispense"
Description: "Defines constraints and extensions on the MedicationDispense resource when used by a Prescription Drug Monitoring Program (PDMP) to return an individual's medication dispense history."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-04-01"
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
* . ^definition = "Record of a medication dispensation."
* . ^mustSupport = false
* . ^isModifier = false
* extension contains
    pdmp-extension-rx-fill-number named rx-fill-number 0..1 MS and
    pdmp-extension-rx-transmission-method named rx-transmission-method 0..1 MS and
    pdmp-extension-mme named rx-mme 0..1 MS and
    pdmp-extension-lme named rx-lme 0..1 MS and
    pdmp-extension-method-of-payment named rx-method-of-payment 0..1 and
    pdmp-extension-opioid-treatment-code named rx-opioid-treatment-code 0..1
* status 1.. MS
* status from $medicationdispense-status (required)
* status ^binding.description = "A set of codes indicating the current status of a MedicationDispense."
* medication[x] only CodeableConcept or Reference($us-core-medication)
* medication[x] MS
* medication[x] from $us-core-medication-clinical-drug (extensible)
* medication[x] ^isModifier = false
* medication[x] ^binding.description = "Prescribable medications"
* medicationCodeableConcept.coding.userSelected MS
* subject 1.. MS
* subject only Reference($us-core-patient)
* subject ^isModifier = false
* performer 1..1 MS
* performer ^isModifier = false
* performer.actor 1..1 MS
* performer.actor obeys pdmp-dispense-performer
* performer.actor ^isModifier = false
* performer.actor only Reference($us-core-practitioner or $pdmp-pharmacy)
* performer.actor.reference MS
* performer.actor.identifier MS
* performer.actor.identifier ^comment = "NPI, DEA, NCPDP Provider ID or state license number preferred."
* performer.actor.identifier.system 1..1 MS
* performer.actor.identifier.system only uri
* performer.actor.identifier.value 1..1 MS
* performer.actor.identifier.value only string
* performer.actor.display MS
* performer.actor.display ^comment = "Performer's name"
* authorizingPrescription 0..1 MS
* authorizingPrescription.identifier 0..1 MS
//* authorizingPrescription.authoredOn 0..1 MS
//* authorizingPrescription.dispenseRequest 0..1 MS
//* authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed 0..1 MS


/*
* authorizingPrescription.identifier ^slicing.discriminator.type = #value
* authorizingPrescription.identifier ^slicing.discriminator.path = "type.coding.code"
* authorizingPrescription.identifier ^slicing.rules = #open
* authorizingPrescription.identifier ^slicing.description = "Slice based on the identifier.type.code"
* authorizingPrescription.identifier.value MS
* authorizingPrescription.identifier contains
    pharmacy-prescription-id 0..*
    prescriber-order-id 0..* and
* authorizingPrescription.identifier[pharmacy-prescription-id] ^short = "Pharmacy Prescription ID"
* authorizingPrescription.identifier[pharmacy-prescription-id] ^comment = "Prescription ID assigned by the pharmacy"
* authorizingPrescription.identifier[pharmacy-prescription-id].type.coding.code = #FILL
* authorizingPrescription.identifier[pharmacy-prescription-id] ^mustSupport = true
* authorizingPrescription.identifier[prescriber-order-id] ^short = "Prescriber Order ID"
* authorizingPrescription.identifier[prescriber-order-id] ^comment = "Order ID assigned by the prescriber system"
* authorizingPrescription.identifier[prescriber-order-id].type.coding.code = #PLAC
*/

* quantity 1..1 MS
* quantity.value 1..1 MS
* quantity.unit 1..1 MS
* quantity.system 0..1 MS
* quantity.code 0..1 MS
* daysSupply 1..1 MS
* daysSupply.value 1..1 MS
* whenPrepared 1.. MS
* whenPrepared ^isModifier = false
* dosageInstruction ..1 MS
* dosageInstruction ^isModifier = false


Instance: pdmp-meddispense-1
InstanceOf: pdmp-medicationdispense
Usage: #example
Description: "Example of a PDMP medication dispensation record with MME extension"
* meta.versionId = "1"
* meta.lastUpdated = "2023-06-05T06:38:52Z"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* meta.source = "http://example.org/ma-pdmp"
* extension[0].url = $pdmp-extension-rx-fill-number
* extension[=].valuePositiveInt = 1
* extension[+].url = $pdmp-extension-rx-transmission-method
* extension[=].valueCoding = $pmix-transmission-cs#"05" "Electronic Prescription"
* extension[+].url = $pdmp-extension-mme
* extension[=].valueDecimal = 18
* extension[+].url  = $pdmp-extension-method-of-payment
* extension[=].valueCoding = $pmix-method-of-payment-cs#"01" "Private Pay (Cash, Charge, Credit Card)"
* extension[+].url  = $pdmp-extension-opioid-treatment-code
* extension[=].valueCoding = $pmix-opioid-treatment-code-cs#"10" "Acute Opioid Therapy"
* identifier.type = $v2-0203#FILL "Filler Identifier"
* identifier.system = "http://ourpharmacy.com/fillnumber"
* identifier.value = "2000353"
* status = #completed
* medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* medicationCodeableConcept.coding[+] = $ndc#00093015001
* medicationCodeableConcept.coding[=].userSelected = true
* medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* subject.reference = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* subject.display = "August Samuels"
* performer.actor.reference = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* performer.actor.identifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* performer.actor.identifier.value = "999017"
* performer.actor.display = "Our Pharmacy"
* authorizingPrescription.identifier.type = $v2-0203#FILL "Filler Identifier"
* authorizingPrescription.identifier.system = "http://mypharmacysystem.com/prescriptionnumber"
* authorizingPrescription.identifier.value = "065046045550"
* quantity.value = 15 
* quantity.unit = "each"
* daysSupply.value = 5
* whenPrepared = "2023-06-05"
* whenHandedOver.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* whenHandedOver.extension.valueCode = #unknown
* dosageInstruction.sequence = 1
* dosageInstruction.text = "1 tablet every 6-8 hours as needed for pain"



Instance: pdmp-meddispense-2
InstanceOf: pdmp-medicationdispense
Usage: #example
Description: "Example of a PDMP medication dispensation record with LME extension "
* meta.versionId = "1"
* meta.lastUpdated = "2016-12-10T06:38:52Z"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* extension[0].url = $pdmp-extension-rx-fill-number
* extension[=].valuePositiveInt = 4
* extension[+].url = $pdmp-extension-rx-transmission-method
* extension[=].valueCoding = $pmix-transmission-cs#"05" "Electronic Prescription"
* extension[+].url = $pdmp-extension-lme
* extension[=].valueDecimal = 4
* status = #in-progress
* medicationCodeableConcept.coding[0] = $rxnorm#433800 "24 HR alprazolam 1 MG Extended Release Oral Tablet"
* medicationCodeableConcept.coding[+] = $ndc#00093545106
* medicationCodeableConcept.coding[=].userSelected = true
* medicationCodeableConcept.text = "24 HR alprazolam 1 MG Extended Release Oral Tablet"
* subject.display = "August Samuels"
* performer.actor.identifier[0].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* performer.actor.identifier[=].value = "999017"
* performer.actor.display = "Our Pharmacy"
* authorizingPrescription.identifier.type = $v2-0203#FILL "Filler Identifier"
* authorizingPrescription.identifier.system = "http://mypharmacysystem.com/prescriptionnumber"
* authorizingPrescription.identifier.value = "065046045550"
* quantity.value = 60 
* quantity.unit = "each"
* daysSupply.value = 30
* whenPrepared = "2023-07-08T06:45:52Z"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "2 tablets every morning"