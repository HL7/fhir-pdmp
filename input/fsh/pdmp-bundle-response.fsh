Alias: $pdmp-messageheader-response = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-response
Alias: $pdmp-parameters-response = http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias: $us-core-practitionerrole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization

Profile: PdmpBundleResponse
Parent: Bundle
Id: pdmp-bundle-response
Title: "PDMP Bundle - Response Message"
Description: "This profile constrains a Bundle resource for use as the response message to a PDMP--with a results Bundle resource as the message's message focus."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2023-10-08T00:00:00-05:00"
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
    bundle 1..1 MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $pdmp-messageheader-response
* entry[bundle].resource 1..1 MS
* entry[bundle].resource only Bundle

Alias: $pdmp-event-type = http://hl7.org/fhir/us/pdmp/CodeSystem/pdmp-event-type
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $ndc = http://hl7.org/fhir/sid/ndc
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type

Instance: pdmp-bundle-response-1
InstanceOf: pdmp-bundle-response
Usage: #example
Description: "Example of a PDMP response message"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response"
* type = #message
* timestamp = "2020-03-11T08:10:17-05:00"
* entry[0].fullUrl = "urn:uuid:b5000d0c-fed9-4746-ac26-b5ce0111a2b7"
* entry[=].resource = messageheader-res-1
* entry[+].fullUrl = "urn:uuid:aecbb129-9a73-4b59-9d66-ff5cdb3f3164"
* entry[=].resource = bundle-res-1

Instance: messageheader-res-1
InstanceOf: MessageHeader
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-response"
* eventCoding = $pdmp-event-type#pdmp-patient-response "PDMP Patient Response"
* source.name = "MyPDMPServer"
* source.endpoint = "https://pdmp1.testpdmp.org/"
* response.identifier = "5065aa9f-bd6d-49a8-924c-5d00f5d0b997"
* response.code = #ok
* focus = Reference(urn:uuid:aecbb129-9a73-4b59-9d66-ff5cdb3f3164)

Instance: bundle-res-1
InstanceOf: Bundle
Usage: #inline
* type = #collection
* entry[0].fullUrl = "urn:uuid:9ce2a97b-5cab-4986-814f-4734016e6084"
* entry[=].resource = meddispense-res-1
* entry[+].fullUrl = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* entry[=].resource = patient-res-1-1
* entry[+].fullUrl = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* entry[=].resource = pharmacy-res-1-1

Instance: meddispense-res-1
InstanceOf: MedicationDispense
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-refill-number"
* extension.valuePositiveInt = 1
* identifier.type = $v2-0203#FILL "Filler Identifier"
* identifier.system = "http://ourpharmacy.com/fillnumber"
* identifier.value = "2000353"
* status = #completed
* medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* medicationCodeableConcept.coding[+] = $ndc#00093015001
* medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* subject.reference = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* subject.display = "August Samuels"
* performer.actor.reference = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* performer.actor.identifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* performer.actor.identifier.value = "999017"
* performer.actor.display = "Our Pharmacy"
* authorizingPrescription.identifier.type = $v2-0203#PLAC "Placer Identifier"
* authorizingPrescription.identifier.system = "http://myprescribingsystem.com/ordernumber"
* authorizingPrescription.identifier.value = "605153"
* quantity = 10 '{each}' "each"
* daysSupply.value = 5
* whenHandedOver = "2023-06-05"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "1 tab tid prn pain"

Instance: patient-res-1-1
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for August Samuels as associated with a medication dispense</div>"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "120-35-2435"
* name.family = "Samuels"
* name.given = "August"
* gender = #male
* birthDate = "1989-03-12"
* address.state = "MA"
* address.postalCode = "01059"

Instance: pharmacy-res-1-1
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The pharmacy that dispensed the reported medication: Our Pharmacy</div>"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1669512349"
* identifier[+].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* identifier[=].value = "999017"
* active = true
* type = $organization-type#prov "Healthcare Provider"
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

















Instance: pdmp-bundle-response-reference-test-w-urn-uuids
InstanceOf: pdmp-bundle-response
Usage: #example
Description: "Testing nested bundle references--using urn:uuid. ** One referenced resource (Organization) is in the same nested Bundle as the MedicationDispense that refrences it. The other referenced resource (Patient) is in the parent Bundle **"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response"
* type = #message
* timestamp = "2020-03-11T08:10:17-05:00"
* entry[0].fullUrl = "urn:uuid:b5000d0c-fed9-4746-ac26-b5ce0111a2b7"
* entry[=].resource = messageheader-res-2
* entry[+].fullUrl = "urn:uuid:aecbb129-9a73-4b59-9d66-ff5cdb3f3164"
* entry[=].resource = bundle-res-2
* entry[+].fullUrl = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* entry[=].resource = patient-res-2-1

Instance: messageheader-res-2
InstanceOf: MessageHeader
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-response"
* eventCoding = $pdmp-event-type#pdmp-patient-response "PDMP Patient Response"
* source.name = "MyPDMPServer"
* source.endpoint = "https://pdmp1.testpdmp.org/"
* response.identifier = "5065aa9f-bd6d-49a8-924c-5d00f5d0b997"
* response.code = #ok
* focus = Reference(urn:uuid:aecbb129-9a73-4b59-9d66-ff5cdb3f3164)

Instance: patient-res-2-1
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for August Samuels as associated with a medication dispense</div>"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "120-35-2435"
* name.family = "Samuels"
* name.given = "August"
* gender = #male
* birthDate = "1989-03-12"
* address.state = "MA"
* address.postalCode = "01059"

Instance: bundle-res-2
InstanceOf: Bundle
Usage: #inline
* type = #collection
* entry[0].fullUrl = "urn:uuid:9ce2a97b-5cab-4986-814f-4734016e6084"
* entry[=].resource = meddispense-res-2
* entry[+].fullUrl = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* entry[=].resource = pharmacy-res-2-1

Instance: meddispense-res-2
InstanceOf: MedicationDispense
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-refill-number"
* extension.valuePositiveInt = 1
* identifier.type = $v2-0203#FILL "Filler Identifier"
* identifier.system = "http://ourpharmacy.com/fillnumber"
* identifier.value = "2000353"
* status = #completed
* medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* medicationCodeableConcept.coding[+] = $ndc#00093015001
* medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* subject.reference = "urn:uuid:53a1e123-5b56-44ae-b7e8-36e0b9800f57"
* subject.display = "August Samuels"
* performer.actor.reference = "urn:uuid:82ae67e4-f23a-4c17-b80a-9076a37f5d6e"
* performer.actor.identifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* performer.actor.identifier.value = "999017"
* performer.actor.display = "Our Pharmacy"
* authorizingPrescription.identifier.type = $v2-0203#PLAC "Placer Identifier"
* authorizingPrescription.identifier.system = "http://myprescribingsystem.com/ordernumber"
* authorizingPrescription.identifier.value = "605153"
* quantity = 10 '{each}' "each"
* daysSupply.value = 5
* whenHandedOver = "2023-06-05"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "1 tab tid prn pain"

Instance: pharmacy-res-2-1
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The pharmacy that dispensed the reported medication: Our Pharmacy</div>"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1669512349"
* identifier[+].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* identifier[=].value = "999017"
* active = true
* type = $organization-type#prov "Healthcare Provider"
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










Instance: pdmp-bundle-response-reference-test-w-relative-urls
InstanceOf: pdmp-bundle-response
Usage: #example
Description: "Testing nested bundle references--using relative URLs. ** One referenced resource (Organization) is in the same nested Bundle as the MedicationDispense that refrences it. The other referenced resource (Patient) is in the parent Bundle **"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response"
* type = #message
* timestamp = "2020-03-11T08:10:17-05:00"
* entry[0].fullUrl = "https://pdmp1.testpdmp.org/MessageHeader/messageheader-res-3"
* entry[=].resource = messageheader-res-3
* entry[+].fullUrl = "https://pdmp1.testpdmp.org/Bundle/bundle-res-3"
* entry[=].resource = bundle-res-3
* entry[+].fullUrl = "https://pdmp1.testpdmp.org/Patient/patient-res-3-1"
* entry[=].resource = patient-res-3-1

Instance: messageheader-res-3
InstanceOf: MessageHeader
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-response"
* eventCoding = $pdmp-event-type#pdmp-patient-response "PDMP Patient Response"
* source.name = "MyPDMPServer"
* source.endpoint = "https://pdmp1.testpdmp.org/"
* response.identifier = "5065aa9f-bd6d-49a8-924c-5d00f5d0b997"
* response.code = #ok
* focus = Reference(https://pdmp1.testpdmp.org/Bundle/bundle-res-3)

Instance: patient-res-3-1
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for August Samuels as associated with a medication dispense</div>"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "120-35-2435"
* name.family = "Samuels"
* name.given = "August"
* gender = #male
* birthDate = "1989-03-12"
* address.state = "MA"
* address.postalCode = "01059"

Instance: bundle-res-3
InstanceOf: Bundle
Usage: #inline
* type = #collection
* entry[0].fullUrl = "https://pdmp1.testpdmp.org/MedicationDispense/meddispense-res-3"
* entry[=].resource = meddispense-res-3
* entry[+].fullUrl = "https://pdmp1.testpdmp.org/Organization/pharmacy-res-3-1"
* entry[=].resource = pharmacy-res-3-1

Instance: meddispense-res-3
InstanceOf: MedicationDispense
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-refill-number"
* extension.valuePositiveInt = 1
* identifier.type = $v2-0203#FILL "Filler Identifier"
* identifier.system = "http://ourpharmacy.com/fillnumber"
* identifier.value = "2000353"
* status = #completed
* medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* medicationCodeableConcept.coding[+] = $ndc#00093015001
* medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* subject.reference = "Patient/patient-res-3-1"
* subject.display = "August Samuels"
* performer.actor.reference = "Organization/pharmacy-res-3-1"
* performer.actor.identifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* performer.actor.identifier.value = "999017"
* performer.actor.display = "Our Pharmacy"
* authorizingPrescription.identifier.type = $v2-0203#PLAC "Placer Identifier"
* authorizingPrescription.identifier.system = "http://myprescribingsystem.com/ordernumber"
* authorizingPrescription.identifier.value = "605153"
* quantity = 10 '{each}' "each"
* daysSupply.value = 5
* whenHandedOver = "2023-06-05"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "1 tab tid prn pain"

Instance: pharmacy-res-3-1
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The pharmacy that dispensed the reported medication: Our Pharmacy</div>"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1669512349"
* identifier[+].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* identifier[=].value = "999017"
* active = true
* type = $organization-type#prov "Healthcare Provider"
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










Instance: pdmp-bundle-response-reference-test-w-absolute-urls
InstanceOf: pdmp-bundle-response
Usage: #example
Description: "Testing nested bundle references--using absolute URLs. ** One referenced resource (Organization) is in the same nested Bundle as the MedicationDispense that refrences it. The other referenced resource (Patient) is in the parent Bundle **"
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response"
* type = #message
* timestamp = "2020-03-11T08:10:17-05:00"
* entry[0].fullUrl = "https://pdmp1.testpdmp.org/MessageHeader/messageheader-res-4"
* entry[=].resource = messageheader-res-4
* entry[+].fullUrl = "https://pdmp1.testpdmp.org/Bundle/bundle-res-4"
* entry[=].resource = bundle-res-4
* entry[+].fullUrl = "https://pdmp1.testpdmp.org/Patient/patient-res-4-1"
* entry[=].resource = patient-res-4-1

Instance: messageheader-res-4
InstanceOf: MessageHeader
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-messageheader-response"
* eventCoding = $pdmp-event-type#pdmp-patient-response "PDMP Patient Response"
* source.name = "MyPDMPServer"
* source.endpoint = "https://pdmp1.testpdmp.org/"
* response.identifier = "5065aa9f-bd6d-49a8-924c-5d00f5d0b997"
* response.code = #ok
* focus = Reference(https://pdmp1.testpdmp.org/Bundle/bundle-res-4)

Instance: patient-res-4-1
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The PDMP Responder's patient record for August Samuels as associated with a medication dispense</div>"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "120-35-2435"
* name.family = "Samuels"
* name.given = "August"
* gender = #male
* birthDate = "1989-03-12"
* address.state = "MA"
* address.postalCode = "01059"

Instance: bundle-res-4
InstanceOf: Bundle
Usage: #inline
* type = #collection
* entry[0].fullUrl = "https://pdmp1.testpdmp.org/MedicationDispense/meddispense-res-4"
* entry[=].resource = meddispense-res-4
* entry[+].fullUrl = "https://pdmp1.testpdmp.org/Organization/pharmacy-res-4-1"
* entry[=].resource = pharmacy-res-4-1

Instance: meddispense-res-4
InstanceOf: MedicationDispense
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-medicationdispense"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A record of a medication that was dispensed to the patient identified in the PDMP request: August Samuels</div>"
* extension.url = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-refill-number"
* extension.valuePositiveInt = 1
* identifier.type = $v2-0203#FILL "Filler Identifier"
* identifier.system = "http://ourpharmacy.com/fillnumber"
* identifier.value = "2000353"
* status = #completed
* medicationCodeableConcept.coding[0] = $rxnorm#993781 "acetaminophen 300 MG / codeine phosphate 30 MG Oral Tablet"
* medicationCodeableConcept.coding[+] = $ndc#00093015001
* medicationCodeableConcept.text = "Acetaminophen 300 mg / Codeine 30 mg oral tablet"
* subject.reference = "https://pdmp1.testpdmp.org/Patient/patient-res-4-1"
* subject.display = "August Samuels"
* performer.actor.reference = "https://pdmp1.testpdmp.org/Organization/pharmacy-res-4-1"
* performer.actor.identifier.system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* performer.actor.identifier.value = "999017"
* performer.actor.display = "Our Pharmacy"
* authorizingPrescription.identifier.type = $v2-0203#PLAC "Placer Identifier"
* authorizingPrescription.identifier.system = "http://myprescribingsystem.com/ordernumber"
* authorizingPrescription.identifier.value = "605153"
* quantity = 10 '{each}' "each"
* daysSupply.value = 5
* whenHandedOver = "2023-06-05"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "1 tab tid prn pain"

Instance: pharmacy-res-4-1
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-organization-pharmacy"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The pharmacy that dispensed the reported medication: Our Pharmacy</div>"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1669512349"
* identifier[+].system = "http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber"
* identifier[=].value = "999017"
* active = true
* type = $organization-type#prov "Healthcare Provider"
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