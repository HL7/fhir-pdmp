Invariant: pdmp-full-birthdate
Severity: #error
Description: "Date SHALL include year, month and day if present"
Expression: "extension.exists() or toString().length()=10"

Profile: PdmpPatient
Parent: $us-core-patient
Id: pdmp-patient
Title: "PDMP Patient"
Description: "Defines constraints and extensions on the Patient resource when used by a Prescription Drug Monitoring Program (PDMP) to request or return an individual's medication dispensation history."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-04-01T00:00:00-05:00"
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
* . ^definition = "Patient population guidance for use in a PDMP request or response."
* . ^mustSupport = false
* . ^isModifier = false
* extension contains
	$patient-animal-extension named patient-animal 0..1 MS
* name.family 1.. 
* name.given 1..
* birthDate 1..1 MS
* birthDate obeys pdmp-full-birthdate
* address.country MS  
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.type.code"
* identifier contains
    medicalRecordNumber 0.. and
    driversLicense 0.. and
    socialSecurity 0..1 
* identifier[medicalRecordNumber].type.coding.code = #MR
* identifier[medicalRecordNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[driversLicense].type.coding.code = #DL
* identifier[driversLicense].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[socialSecurity].type.coding.code = #SS
* identifier[socialSecurity].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[socialSecurity].system = "http://hl7.org/fhir/sid/us-ssn"


Instance: pdmp-patient-1
InstanceOf: pdmp-patient
Usage: #example
Description: "Example of a PDMP patient - as submitted in a request or returned in a response"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-patient"
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #SS
* identifier.type.coding.display = "Social Security number"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "120-35-2435"
* name.family = "Samuels"
* name.given = "August"
* gender = #male
* birthDate = "1989-03-12"
* address.line[0] = "10023 Oakways Ln"
* address.state = "Concord"
* address.state = "MA"
* address.postalCode = "01742"


Instance: pdmp-patient-2-veterinary
InstanceOf: pdmp-patient
Usage: #example
Description: "Example of a PDMP patient representing an animal"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-patient"
* extension[0].url = $patient-animal-extension
* extension[=].extension[0].url = "species"
* extension[=].extension[0].valueCodeableConcept.coding = $pmix-species-type-cs#02 "Veterinary Patient"
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #MR
* identifier.type.coding.display = "Medical record number"
* identifier.system = "http://vet-medical.example.org/mrn"
* identifier.value = "10035406"
* name.family = "Samuels"
* name.given = "Fido"
* gender = #male
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* birthDate.extension.valueCode = #unknown
* address.line[0] = "10023 Oakways Ln"
* address.state = "Concord"
* address.state = "MA"
* address.postalCode = "01742"

Instance: relatedperson-2-veterinary
InstanceOf: RelatedPerson
Usage: #example
Description: "Example of the owner of an animal patient"
* meta.profile = $us-core-relatedperson
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #DL
* identifier.type.coding.display = "Driver's license number"
* identifier.system = "urn:oid:2.16.840.1.113883.4.3.25"
* identifier.value = "M231-64600-565-55"
* active = true
* name.family = "Samuels"
* name.given = "August"
* gender = #male
* birthDate = "1989-03-12"
* address.line[0] = "10023 Oakways Ln"
* address.state = "Concord"
* address.state = "MA"
* address.postalCode = "01742"
* patient.reference = "Patient/pdmp-patient-2-veterinary"

Instance: pdmp-patient-3
InstanceOf: pdmp-patient
Usage: #example
Description: "Example of a PDMP patient - similar to pdmp-patient-1, but may or may not be the same person"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-patient"
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #MR
* identifier.type.coding.display = "Medical Record Number"
* identifier.system = "http://Highview.org/EHR/patient/mrn"
* identifier.value = "28-145-2249"
* name.family = "Samuels"
* name.given = "August"
* name.given = "Thomas"
* gender = #male
* birthDate = "1989-03-12"
* address.line[0] = "10023 Oakways Ln #23"
* address.state = "Concord"
* address.state = "MA"
* address.postalCode = "01742"