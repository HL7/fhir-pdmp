Profile: PdmpBundleSearchResult
Parent: Bundle
Id: pdmp-bundle-search-result
Title: "PDMP Bundle - Search Result"
Description: "This profile constrains a Bundle resource to carry the results from a PDMP request"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-search-result"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2023-10-25T00:00:00-05:00"
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
* type only code
* type = #searchset (exactly)
* type MS
* total MS
* entry MS
* entry ^comment = "A search result bundle may contain zero or more entries. If no matches are found for the executed search, the bundle may include an OperationOutcome describing the reason--as a warning or error"
* entry.resource 1.. MS
* entry.search MS
* entry.search.mode MS
* entry.request 0..0
* entry.request ^mustSupport = false
* entry.response 0..0
* entry.response ^mustSupport = false