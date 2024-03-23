CodeSystem: TemporaryPMIXMethodOfPayment
Id: temporary-pmix-method-of-payment
Title: "PMIX Method of Payment Code (Temporary)"
Description: "A code identifying the method of payment"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-03-22T00:00:00-07:00"
* ^publisher = "HL7 International / Pharmacy"
* ^contact[0].name = "HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Scott Robertson"
* ^contact[=].telecom[0].system = #email
* ^contact[=].telecom[=].value = "scott.robertson@pocp.com"
* ^contact[=].telecom[+].system = #email
* ^contact[=].telecom[=].value = "scott@BearHealthTech.consulting"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^caseSensitive = false
* ^content = #complete
* #01 "Private Pay (Cash, Charge, Credit Card)"
* #02 "Medicaid"
* #03 "Medicare"
* #04 "Commercial Insurance"
* #05 "Military Installations or VA"
* #06 "Worker's Compensation"
* #07 "Indian Nations"
* #99 "Other"
