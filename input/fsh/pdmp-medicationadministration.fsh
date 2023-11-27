Alias: $us-core-medication = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-encounter = http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $medication-admin-status = http://hl7.org/fhir/ValueSet/medication-admin-status
Alias: $us-core-medication-clinical-drug = http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1010.4

Profile: MedicationAdministrationProfile
Parent: MedicationAdministration
Id: pdmp-medicationadministration
Title: "PDMP MedicationAdministration"
Description: "Defines constraints and extensions on the MedicationAdministration resource when used by a Prescription Drug Monitoring Program (PDMP) to return an individual's medication administration history."
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
* . ^definition = "Administration that a medication is/was actively taken by a patient."
* . ^mustSupport = false
* extension contains
    pdmp-extension-rx-transmission-method named rx-transmission-method 0..1 MS
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
Alias: $ndc = http://hl7.org/fhir/sid/ndc
Alias: $pmix-transmission-code = http://hl7.org/fhir/us/pdmp/CodeSystem/temporary-pmix-transmission-form-of-rx-origin

Instance: pdmp-medadmin-1
InstanceOf: pdmp-medicationadministration
Usage: #example
Description: "Example of a PDMP medication administration"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationadministration"
* extension[0].url = $pdmp-extension-rx-transmission-method
* extension[=].valueCoding = $pmix-transmission-code#"02" "Telephone Prescription"
* status = #completed
* medicationCodeableConcept.coding[0] = $rxnorm#864706 "methadone hydrochloride 10 MG Oral Tablet"
* medicationCodeableConcept.coding[+] = $ndc#00406577123 "METHADONE HYDROCHLORIDE, 1 TABLET in 1 BLISTER PACK (0406-5771-23) (package)"
* medicationCodeableConcept.text = "methadone hydrochloride 10 MG Oral Tablet"
* subject.display = "Amy V. Shaw"
* effectivePeriod.start = "2023-01-15T04:30:00+01:00"
* performer.actor.display = "Ronald Bone, MD"
* dosage.text = "Take 1 tablet daily"
* dosage.dose = 1 '{each}' "each"