Instance: pdmp-conceptmap-ncpdp-2017071-newrx-to-fhir-r4
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.org/fhir/us/pdmp/ConceptMap/pdmp-conceptmap-ncpdp-2017071-newrx-to-fhir-r4"
* version = "1.0.0"
* name = "PdmpConceptMapNcpdp2017071NewrxToFhirR4"
* title = "PDMP ConceptMap NCPDP 2017071 NewRx to FHIR R4"
* status = #active
* experimental = true
* date = "2023-11-01"
* publisher = "HL7 International"
* contact[0].name = "HL7 International / Pharmacy"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* contact[+].name = "Scott Robertson"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "scott@bearhealthtech.consulting"
* contact[+].name = "Frank McKinney"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "fm@frankmckinney.com"
* description = "This ConceptMap identifies elements in FHIR R4 resources that are equivalent to those in the NCPDP 2017071 NewRx message."
* jurisdiction = urn:iso:std:iso:3166#US
* copyright = "Copyright (c) 2023, HL7 International, Inc., All Rights Reserved."
* group.source = "NCPDP-2017071-NewRx"
* group.target = "HL7-FHIR-R4"
* group.element[0].code = #Prescriber.NonVeterinarian.Name
* group.element[=].target.code = #MedicationRequest.requester
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "The NewRx has separate structures for veterinarian vs non-veterinarian prescribers"
* group.element[+].code = #Prescriber.Veterinarian.Name
* group.element[=].target.code = #MedicationRequest.requester
* group.element[=].target.equivalence = #equal
* group.element[=].target.comment = "The NewRx has separate structures for veterinarian vs non-veterinarian prescribers"