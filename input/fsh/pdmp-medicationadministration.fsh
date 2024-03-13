Invariant: pdmp-administration-performer
Severity: #error
Description: "MedicationAdministration SHALL include a performer actor reference or performer actor identifier"
Expression: "reference.exists() or identifier.exists()"


Profile: PdmpMedicationAdministration
Parent: MedicationAdministration
Id: pdmp-medicationadministration
Title: "PDMP MedicationAdministration"
Description: "Defines constraints and extensions on the MedicationAdministration resource when used by a Prescription Drug Monitoring Program (PDMP) to return an individual's medication administration history."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^version = "2.2.0"
* ^status = #active
* ^date = "2024-03-13"
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
* medicationCodeableConcept.coding.userSelected MS
* subject only Reference($us-core-patient)
* subject MS
* subject ^isModifier = false
* context only Reference($us-core-encounter)
* context MS
* context ^isModifier = false
* effective[x] MS
* effective[x] ^isModifier = false
* performer 1..1 MS
* performer ^isModifier = false
* performer.actor obeys pdmp-administration-performer
* performer.actor 1..1 MS
* performer.actor ^isModifier = false
* performer.actor.reference MS
* performer.actor.identifier MS
* performer.actor.identifier ^comment = "NPI, DEA or state license number preferred."
* performer.actor.identifier.system 1..1 MS
* performer.actor.identifier.system only uri
* performer.actor.identifier.value 1..1 MS
* performer.actor.identifier.value only string
* performer.actor.display MS
* performer.actor.display ^comment = "Performer's name"
* request MS
* request only Reference($us-core-medicationrequest)
* dosage 1..1 MS
* dosage ^isModifier = false
* dosage.text MS
* dosage.text ^comment = "Textual administration directions (e.g., Give 1 tablet)"
* dosage.dose 1..1 MS
* dosage.dose.value 1..1 MS
* dosage.dose.unit 1..1 MS
* dosage.dose.system 0..1 MS
* dosage.dose.code 0..1 MS


Instance: pdmp-medadmin-1
InstanceOf: pdmp-medicationadministration
Usage: #example
Description: "Example of a PDMP medication administration"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationadministration"
* extension[0].url = $pdmp-extension-rx-transmission-method
* extension[=].valueCoding = $pmix-transmission-cs#"02" "Telephone Prescription"
* status = #completed
* medicationCodeableConcept.coding[0] = $rxnorm#864706 "methadone hydrochloride 10 MG Oral Tablet"
* medicationCodeableConcept.coding[+] = $ndc#00406577123 "METHADONE HYDROCHLORIDE, 1 TABLET in 1 BLISTER PACK (0406-5771-23) (package)"
* medicationCodeableConcept.coding[=].userSelected = true
* medicationCodeableConcept.text = "methadone hydrochloride 10 MG Oral Tablet"
* subject.display = "Amy V. Shaw"
* effectivePeriod.start = "2023-01-15T04:30:00+01:00"
* performer.actor.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* performer.actor.identifier.value = "1669512349"
* performer.actor.display = "Ronald Bone, MD"
* dosage.text = "Give 1 tablet"
* dosage.dose.value = 1 
* dosage.dose.unit = "each"