Profile: PdmpOrganizationPharmacy
Parent: $us-core-organization
Id: pdmp-organization-pharmacy
Title: "PDMP Organization - Pharmacy"
Description: "Defines constraints and extensions on the Organization resource when used by a Prescription Drug Monitoring Program (PDMP) to represent a dispensing pharmacy."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-11-26"
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
* . ^definition = "Organization population guidance to represent a dispensing pharmacy in a PDMP response."
* . ^mustSupport = false
* . ^isModifier = false
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^comment = "NPI preferred."
* identifier.system ..1 MS
* identifier.system only uri
* identifier.value ..1 MS
* identifier.value only string
* identifier contains
    NCPDP 0..1 and
    DEA 0..1
* identifier[NCPDP] ^short = "NCPDP Provider ID"
* identifier[NCPDP] ^comment = "NCPDP Provider Identification Number."
* identifier[NCPDP] ^patternIdentifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* identifier[NCPDP] ^mustSupport = true
* identifier[DEA] ^short = "DEA Number"
* identifier[DEA] ^comment = "Drug Enforcement Administration registration number"
* identifier[DEA] ^patternIdentifier.system = "urn:oid:2.16.840.1.113883.4.814"
* identifier[DEA] ^mustSupport = true
* address MS

Instance: pdmp-pharmacy-1
InstanceOf: pdmp-organization-pharmacy
Usage: #example
Description: "Example of a PDMP dispensing pharmacy"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-organization-pharmacy"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The pharmacy that dispensed the reported medication: Our Pharmacy</div>"
* identifier[0].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[=].type.coding.code = #DEA
* identifier[=].type.coding.display = "Drug Enforcement Administration registration number"
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.814"
* identifier[=].value = "CS4861378"
* identifier[+].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1669512349"
* identifier[+].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* identifier[=].value = "999017"
* active = true
* name = "Our Pharmacy"
* telecom[0].system = #phone
* telecom[=].value = "952-555-5555"
* telecom[+].system = #email
* telecom[=].value = "contact-our-pharmacy@email.org"
* address.line = "220 Oak St"
* address.city = "Minneapolis"
* address.state = "MN"
* address.postalCode = "55008"
* address.country = "USA"