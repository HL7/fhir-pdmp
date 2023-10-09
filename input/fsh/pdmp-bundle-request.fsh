Alias: $pdmp-messageheader-request = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-request
Alias: $pdmp-parameters-request = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-request
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $us-core-location = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location

Profile: PdmpBundleRequest
Parent: Bundle
Id: pdmp-bundle-request
Title: "PDMP Bundle - Request Message"
Description: "This profile constrains a Bundle resource for use as the request message to a PDMP--with a Parameters resource as the bundle's message focus."
* ^url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2023-10-08T00:00:00-05:00"
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
* . ^mustSupport = false
* type only code
* type = #message (exactly)
* type MS
* total 0..0
* total ^mustSupport = false
* entry ..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry.search 0..0
* entry.search ^mustSupport = false
* entry.request 0..0
* entry.request ^mustSupport = false
* entry.response 0..0
* entry.response ^mustSupport = false
* entry contains
    messageheader 1..1 MS and
    parameters 1..1 MS and
    patient 1..2 MS and
    practitioner 0..* MS and
    organization 0..* MS and
    location 0..* MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $pdmp-messageheader-request
* entry[parameters].resource 1..1 MS
* entry[parameters].resource only $pdmp-parameters-request
* entry[patient] ^comment = "Patient information as understood by the requesting system."
* entry[patient].resource 1..1 MS
* entry[patient].resource only $us-core-patient
* entry[practitioner].resource 1..1 MS
* entry[practitioner].resource only $us-core-practitioner
* entry[organization].resource 0..1 MS
* entry[organization].resource only $us-core-organization
* entry[location].resource 0..1 MS
* entry[location].resource only $us-core-location