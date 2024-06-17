Extension: PrescriptionFillNumberExtension
Id: pdmp-extension-rx-fill-number
Title: "PDMP Extension - Prescription Fill Number"
Description: "The fill number of the prescription dispensed. The value representing a prescription's initial fill is 0. The first refill is 1, etc. Fill numbers are integers, each fill increments by 1 regardless of the quantity dispensed."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-04-01T00:00:00.000-05:00"
* ^version = "1.0.0"
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
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* value[x] 1..
* value[x] only positiveInt
* value[x] ^short = "Fill Number"
* value[x] ^definition = "Represents the specific fill number for the prescription dispensed, with 0 representing the initial fill, 1 representing the first refill, etc.  Each fill number represents one dispensation, even if that dispensation is not for the full quantity.  Partial fills are not represented by decimal quantities.  For example, an initial fill of 100 tablets would have rx-fill-number = 0.  A subsequent refill, per patient request, 40 tablets (full quantity is 100 tablets) would have rx-fill-number = 1 (not 0.4).  The next subsequent refill, for any quantity, would have rx-fill-number = 2."