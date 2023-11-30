Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-practitionerrole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $pdmp-patient = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-patient

Profile: PdmpParametersRequest
Parent: Parameters
Id: pdmp-parameters-request
Title: "PDMP Parameters - Request"
Description: "This profile tailors the Parameters resource to convey PDMP Request inputs."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.lastUpdated = "2023-10-05T00:00:00-05:00"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2023-10-05T00:00:00-05:00"
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
* parameter MS
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.ordered = false
* parameter ^slicing.rules = #open
* parameter contains
    patient 1..1 MS and
    animal-owner 0..1 MS and
    authorized-provider 1..1 MS and
    provider-delegate 0..1 MS and
    organization 0..1 MS and
    prefetch-only 0..* MS
* parameter[patient].name = "patient" (exactly)
* parameter[patient].name MS
* parameter[patient].value[x] only Reference($pdmp-patient)
* parameter[patient].value[x] MS
* parameter[animal-owner].name = "animal-owner" (exactly)
* parameter[animal-owner].name MS
* parameter[animal-owner].value[x] only Reference($us-core-relatedperson)
* parameter[animal-owner].value[x] MS
* parameter[authorized-provider].name = "authorized-provider" (exactly)
* parameter[authorized-provider].name MS
* parameter[authorized-provider].value[x] only Reference($us-core-practitionerrole)
* parameter[authorized-provider].value[x] MS
* parameter[provider-delegate].name = "provider-delegate" (exactly)
* parameter[provider-delegate].name MS
* parameter[provider-delegate].value[x] only Reference($us-core-practitionerrole)
* parameter[provider-delegate].value[x] MS
* parameter[organization].name = "organization" (exactly)
* parameter[organization].name MS
* parameter[organization].value[x] only Reference($us-core-organization)
* parameter[organization].value[x] MS
* parameter[prefetch-only].name = "prefetch-only" (exactly)
* parameter[prefetch-only].name MS
* parameter[prefetch-only].value[x] only boolean
