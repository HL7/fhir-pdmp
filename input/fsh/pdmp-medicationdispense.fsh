Alias: $us-core-medication = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $medicationdispense-status = http://hl7.org/fhir/ValueSet/medicationdispense-status
Alias: $us-core-medication-clinical-drug = http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1010.4
Alias: $us-core-medicationdispense = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationdispense
Alias: $pdmp-extension-rx-refill-number = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-refill-number
Alias: $pdmp-extension-rx-transmission-method = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-transmission-method
Alias: $pdmp-extension-mme = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-mme
Alias: $pdmp-extension-lme = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-lme
Alias: $pmix-transmission-code = http://hl7.org/fhir/us/pdmp/CodeSystem/temporary-pmix-transmission-form-of-rx-origin
Alias: $pdmp-pharmacy = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-organization-pharmacy

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
* ^version = "2.2.0"
* ^status = #active
* ^date = "2023-06-20"
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
* . ^definition = "Dispense of a medication that was prescribed for a patient."
* . ^mustSupport = false
* . ^isModifier = false
* extension contains
    pdmp-extension-rx-refill-number named rx-refill-number 0..1 MS and
    pdmp-extension-rx-transmission-method named rx-transmission-method 0..1 MS and
    pdmp-extension-mme named rx-mme 0..1 MS and
    pdmp-extension-lme named rx-lme 0..1 MS
* status 1.. MS
* status from $medicationdispense-status (required)
* status ^binding.description = "A set of codes indicating the current status of a MedicationDispense."
* medication[x] only CodeableConcept or Reference($us-core-medication)
* medication[x] MS
* medication[x] from $us-core-medication-clinical-drug (extensible)
* medication[x] ^isModifier = false
* medication[x] ^binding.description = "Prescribable medications"
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
* authorizingPrescription 0..1
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

Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm

Instance: pdmp-meddispense-1
InstanceOf: pdmp-medicationdispense
Usage: #example
Description: "Example of a PDMP medication dispense"
* meta.versionId = "1"
* meta.lastUpdated = "2016-12-08T06:38:52Z"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* extension[0].url = $pdmp-extension-rx-refill-number
* extension[=].valuePositiveInt = 1
* extension[+].url = $pdmp-extension-rx-transmission-method
* extension[=].valueCoding = $pmix-transmission-code#"05" "Electronic Prescription"
* extension[+].url = $pdmp-extension-mme
* extension[=].valuePositiveInt = 18
* status = #in-progress
* medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* medicationCodeableConcept.coding[+] = $ndc#00093015001
* medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* subject.display = "Amy V. Shaw"
* performer.actor.identifier[0].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* performer.actor.identifier[=].value = "999017"
* performer.actor.display = "Our Pharmacy"
* quantity.value = 15 
* quantity.unit = "each"
* daysSupply.value = 5
* whenPrepared = "2023-07-08T06:38:52Z"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "1 tablet every 6-8 hours as needed for pain"