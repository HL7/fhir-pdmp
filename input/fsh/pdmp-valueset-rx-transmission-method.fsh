Alias: $ncpdp-prescription-origin-code = http://terminology.hl7.org/CodeSystem/NCPDPPrescriptionOriginCode

ValueSet: PdmpRxTransmissionMethod
Id: pdmp-rx-transmission-method
Title: "PDMP Value Set - Prescription Transmission Method"
Description: "This value set contains codes for the methods by which a prescription was received by the dispensing or administering party."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^meta.lastUpdated = "2023-11-05T00:00:00-05:00"
* ^url = "http://hl7.org/fhir/us/pdmp/ValueSet/pdmp-rx-transmission-method"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-11-05T00:00:00-05:00"
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
* include codes from system $ncpdp-prescription-origin-code