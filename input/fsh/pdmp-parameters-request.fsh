Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $us-core-location = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location

Profile: PdmpParametersRequest
Parent: Parameters
Id: pdmp-parameters-request
Title: "PDMP Parameters - Request"
Description: "This profile tailors the Parameters resource to convey PDMP Request inputs."
* ^meta.lastUpdated = "2023-10-05T00:00:00-05:00"
* ^url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-request"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2023-10-05T00:00:00-05:00"
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
* parameter MS
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.ordered = false
* parameter ^slicing.rules = #open
* parameter contains
    patient 1..1 MS and
    practitioner 1..1 MS and
    organization 0..1 MS and
    location 0..1 MS and
    processing-request 0..* MS
* parameter[patient].name = "patient" (exactly)
* parameter[patient].name MS
* parameter[patient].value[x] only Reference($us-core-patient)
* parameter[patient].value[x] MS
* parameter[practitioner].name = "practitioner" (exactly)
* parameter[practitioner].name MS
* parameter[practitioner].value[x] only Reference($us-core-practitioner)
* parameter[practitioner].value[x] MS
* parameter[organization].name = "organization" (exactly)
* parameter[organization].name MS
* parameter[organization].value[x] only Reference($us-core-organization)
* parameter[organization].value[x] MS
* parameter[location].name = "location" (exactly)
* parameter[location].name MS
* parameter[location].value[x] only Reference($us-core-location)
* parameter[location].value[x] MS
* parameter[processing-request].name = "processing-request" (exactly)
* parameter[processing-request].name MS
* parameter[processing-request].value[x] only string
