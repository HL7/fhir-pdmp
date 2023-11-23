Alias: $us-core-medication = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $patient-status = http://hl7.org/fhir/ValueSet/patient-status

Invariant: full-date-1
Severity: #error
Description: "Date SHALL include year, month and day"
Expression: "toString().length()=10"

Profile: PatientProfile
Parent: $us-core-patient
Id: pdmp-patient
Description: "Defines constraints and extensions on the Patient resource when used by a Prescription Drug Monitoring Program (PDMP) to request or return an individual's medication dispense history."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-11-02"
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
* name.family 1.. 
* name.given 1..
* birthDate 1..1 MS
* birthDate obeys full-date-1
* address.country MS  
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on the Identifier.type.code"
* identifier contains
    medicalRecordNumber 0.. and
    driversLicense 0.. and
    socialSecurity 0..1 
* identifier[medicalRecordNumber].type.coding.code = #MR
* identifier[medicalRecordNumber].type.coding.system = "http://terminology.hl7.org/ValueSet/v2-0203"
* identifier[driversLicense].type.coding.code = #DL
* identifier[driversLicense].type.coding.system = "http://terminology.hl7.org/ValueSet/v2-0203"
* identifier[socialSecurity].type.coding.code = #SS
* identifier[socialSecurity].type.coding.system = "http://terminology.hl7.org/ValueSet/v2-0203"
* identifier[socialSecurity].system = "http://terminology.hl7.org/NamingSystem/ssn"



Instance: patient-1
InstanceOf: pdmp-patient
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "120-35-2435"
* name.family = "Samuels"
* name.given = "August"
* gender = #male
* birthDate = "1989-03-12"
* address.state = "MA"
* address.postalCode = "01059"

Mapping: PDMPonFHIRPatientToSCRIPT2017071
Source: pdmp-patient
Target: "http://ncpdp.org/SCRIPT/2017071"
Id: pdmp-patient-to-script-2017071
Title: "PDMP-SCRIPT Patient map"
Description: "Mapping PDMP Patient to SCRIPT 2017071 Patient structure"
* identifier[medicalRecordNumber] -> "Patient/Identification/MedicalRecordIdentificationNumberEHR"
* identifier[driversLicense] -> "" "no direct map"
* identifier[socialSecurity] -> "Patient/Identification/SocialSecurity"

Mapping: PDMPonFHIRPatientToPMIX
Source: pdmp-patient
Target: "http://pmixpmp.org/niem/4.0/extension"
Id: pdmp-patient-to-pmix
Title: "PDMP-PMIX Patient map"
Description: "Mapping PDMP Patient to PMIX 4.0 Patient structure"
* name -> "pmp:Patient/nc:PersonName"
* name.family -> "pmp:Patient/nc:PersonName/nc:PersonSurName"
* name.given -> "pmp:Patient/nc:PersonName/nc:PersonGivenName"
* name.suffix -> "pmp:Patient/nc:PersonName/nc:PersonNameSuffixText"
* gender -> "pmp:Patient/j:PersonSexCode"
* birthDate -> "pmp:Patient/nc:PersonBirthDate"
* address -> "pmp:Patient/pmp:PersonPrimaryContactInformation/nc:ContactMailingAddress"
* address.line -> "pmp:Patient/pmp:PersonPrimaryContactInformation/nc:ContactMailingAddress/nc:Location.Street"
* address.city -> "pmp:Patient/pmp:PersonPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationCityName"
* address.state -> "pmp:Patient/pmp:PersonPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationState"
* address.postalCode -> "pmp:Patient/pmp:PersonPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationPostalCode"
* address.country -> "" "no equivalent in PMIX_NIEM_4"
* identifier[medicalRecordNumber] -> "pmp:Patient/pmp:PersonOtherIdentifier"
* identifier[driversLicense] -> "pmp:Patient/pmp:PersonDriverLicenseIdentifier"
* identifier[socialSecurity] -> "pmp:Patient/nc:PersonSSNIdentification"
