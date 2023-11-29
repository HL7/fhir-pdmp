Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization

Profile: PdmpParametersResponse
Parent: Parameters
Id: pdmp-parameters-response
Title: "PDMP Parameters - Response"
Description: "This profile tailors the Parameters resource to convey PDMP Response content."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.lastUpdated = "2023-10-05T00:00:00-05:00"
* ^url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response"
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
    patients 0..1 MS and
    results 0..1
* parameter[patients].name = "patient" (exactly)
* parameter[patients].name MS
* parameter[patients].value[x] only Reference(Bundle)
* parameter[patients].value[x] MS
* parameter[results].name = "resultsr" (exactly)
* parameter[results].name MS
* parameter[results].value[x] only Reference(Bundle)
* parameter[results].value[x] MS