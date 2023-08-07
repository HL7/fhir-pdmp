Alias: $us-core-medication = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $medicationdispense-status = http://hl7.org/fhir/ValueSet/medicationdispense-status
Alias: $us-core-medication-codes = http://hl7.org/fhir/us/core/ValueSet/us-core-medication-codes

Profile: MedicationDispenseProfile
Parent: MedicationDispense
Id: pdmp-medicationdispense
Description: "Defines constraints and extensions on the MedicationDispense resource for the minimal set of data to query and retrieve patients medication information."
* ^version = "2.2.0"
* ^status = #active
* ^date = "2023-06-20"
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
* . ^definition = "Dispense that a medication is/was actively taken by a patient."
* . ^mustSupport = false
* . ^isModifier = false
* status 1.. MS
* status from $medicationdispense-status (required)
* status ^binding.description = "A set of codes indicating the current status of a MedicationDispense."
* medication[x] only CodeableConcept or Reference($us-core-medication)
* medication[x] MS
* medication[x] from $us-core-medication-codes (extensible)
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
* meta.versionId = "1"
* meta.lastUpdated = "2016-12-08T06:38:52Z"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-refill-number-extension"
* extension.valuePositiveInt = 5
* status = #in-progress
* medicationCodeableConcept = $rxnorm#285018 "Lantus 100 UNT/ML Injectable Solution"
* medicationCodeableConcept.text = "Lantus 100 UNT/ML Injectable Solution"
* subject.display = "Amy V. Shaw"
* performer.actor.display = "Ronald Bone, MD"
* whenHandedOver = "2016-12-08T06:38:52Z"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "20 Units SC three times daily"