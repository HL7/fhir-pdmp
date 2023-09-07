Alias: $us-core-medication = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-encounter = http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $medication-admin-status = http://hl7.org/fhir/ValueSet/medication-admin-status
Alias: $us-core-medication-clinical-drug = http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1010.4

Profile: MedicationAdministrationProfile
Parent: MedicationAdministration
Id: pdmp-medicationadministration
Description: "Defines constraints and extensions on the MedicationAdministration resource when used by a Prescription Drug Monitoring Program (PDMP) to return an individual's medication administration history. <br/><br/>*NOTE: Use of the MedicationAdministration resource in PDMP exchanges is to be determined by stakeholders.*"
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
* . ^definition = "Administration that a medication is/was actively taken by a patient."
* . ^mustSupport = false
* status 1..1 MS
* status only code
* status from $medication-admin-status (required)
* status ^binding.description = "A set of codes indicating the current status of a MedicationAdministration."
* medication[x] 1..1 MS
* medication[x] only CodeableConcept or Reference($us-core-medication)
* medication[x] from $us-core-medication-clinical-drug (extensible)
* medication[x] ^binding.description = "Prescribable medications"
* subject only Reference($us-core-patient)
* subject MS
* subject ^isModifier = false
* context only Reference($us-core-encounter)
* context MS
* context ^isModifier = false
* effective[x] MS
* effective[x] ^isModifier = false
* performer MS
* performer ^isModifier = false
* performer.actor only Reference($us-core-practitioner or $us-core-patient or RelatedPerson)
* performer.actor MS
* performer.actor ^isModifier = false
* dosage MS
* dosage ^isModifier = false

Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm

Instance: pdmp-medadmin-1
InstanceOf: pdmp-medicationadministration
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2016-12-08T06:38:52Z"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationadministration"
* status = #completed
* medicationCodeableConcept = $rxnorm#285018 "Lantus 100 UNT/ML Injectable Solution"
* medicationCodeableConcept.text = "Lantus 100 UNT/ML Injectable Solution"
* subject.display = "Amy V. Shaw"
* effectivePeriod.start = "2015-01-15T04:30:00+01:00"
* effectivePeriod.end = "2015-01-15T14:30:00+01:00"
* performer.actor.display = "Ronald Bone, MD"
* dosage.text = "20 Units SC before breakfast"
* dosage.dose = 20 'U' "U"