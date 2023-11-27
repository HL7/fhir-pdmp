Alias: $us-core-medication = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $medicationdispense-status = http://hl7.org/fhir/ValueSet/medicationdispense-status
Alias: $us-core-medication-clinical-drug = http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1010.4
Alias: $us-core-medicationdispense = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationdispense
Alias: $pdmp-extension-rx-refill-number = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-refill-number
Alias: $pdmp-extension-rx-transmission-method = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-transmission-method
Alias: $pmix-transmission-code = http://hl7.org/fhir/us/pdmp/CodeSystem/temporary-pmix-transmission-form-of-rx-origin

Profile: MedicationDispenseProfile
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
    pdmp-extension-rx-transmission-method named rx-transmission-method 0..1 MS
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
* performer MS
* performer ^isModifier = false
* performer.actor only Reference($us-core-practitioner or $us-core-organization)
* performer.actor MS
* performer.actor ^isModifier = false
* whenHandedOver 1.. MS
* whenHandedOver ^isModifier = false
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
* status = #in-progress
* medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* medicationCodeableConcept.coding[+] = $ndc#00093015001
* medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* subject.display = "Amy V. Shaw"
* performer.actor.display = "Ronald Bone, MD"
* quantity = 15 '{each}' "each"
* whenHandedOver = "2023-07-08T06:38:52Z"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "1 tablet every 6-8 hours as needed for pain"