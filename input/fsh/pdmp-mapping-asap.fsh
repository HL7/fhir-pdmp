/*
2024-03-22 smrobertson
    ASAP mapping has been excluded from PDMP on FHIR STU1
    this information retained if ASAP mapping is brought back into the IG
2024-06 smrobertson
    ASAP mapping will be included, but mapping will be to ASAP Reporting 4.2B/5.0 
    (they are the same to the extent of the fields mapped)
*/

Mapping: pdmp-meddispense-to-asap-reporting
Source: pdmp-medicationdispense
Target: "http://www.asapnet.org"
Id: pdmp-medication-asap-reporting
Title: "ASAP Reporting Standard versions 4.2B/5.0"
* whenPrepared ->  "DSP05 Date Filled"
// * authorizingPrescription.authoredOn ->  "DSP03 Date Written"
* identifier.value ->  "DSP02 Prescription Number"
* medicationCodeableConcept.coding.system ->  "DSP07 Product ID Qualifier"
* medicationCodeableConcept.coding.code ->  "DSP08 Product ID"
// * medicationCodeableConcept.form ->  "DSP11 Drug Dosage Units Code"
* quantity ->  "DSP09 Quantity Dispensed"
* daysSupply ->  "DSP10 Days Supply"
* extension[pdmp-extension-rx-fill-number] ->  "DSP06 Fill Number"
// * authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed ->  "DSP04 Refills Authorized"
* type ->  "DSP13 Partial Fill Indicator"
* extension[pdmp-extension-method-of-payment] ->  "DSP16 Classification Code For Payment Type"
* extension[pdmp-extension-opioid-treatment-code] ->  "DSP24 Opioid Treatment Type"
* extension[pdmp-extension-rx-transmission-method] ->   "DSP12 Transmission Form of Rx Origin Code"

Mapping: pdmp-patient-to-asap-reporting
Source: pdmp-patient
Target: "http://www.asapnet.org"
Id: pdmp-patient-asap-reporting
Title: "ASAP Reporting Standard versions 4.2B/5.0"
* name.given -> "PAT08 First Name"
* name.family -> "PAT07 Last Name"
* birthDate -> "PAT18 Date of Birth"
* gender -> "PAT19 Gender Code"
* address.line -> "PAT12 Address Information - 1"
* address.line -> "PAT13 Address Information - 2"
* address.city -> "PAT14 City Address"
* address.state -> "PAT15 Jurisdiction/State Address"
* address.postalCode -> "PAT16 Zip Code Address"
* identifier.value -> "PAT03 ID of Patient"
* identifier.system -> "PAT02 ID Qualifier"

Mapping: pdmp-pharmacy-to-asap-reporting
Source: pdmp-organization-pharmacy
Target: "http://www.asapnet.org"
Id: pdmp-patient-asap-reporting
Title: "ASAP Reporting Standard versions 4.2B/5.0"
* name -> "PHA04 Pharmacy or Dispensing Prescriber Name"
* address.line -> "PHA05 Address Information - 1"
* address.line -> "PHA05 Address Information - 2"
* address.city -> "PHA07 City Address"
* address.state -> "PHA08 State Address"
* address.postalCode -> "PHA09 ZIP Code Address"
* telecom -> "PHA10 Phone Number"
* identifier.value -> "PHA03 DEA Number" "identifier.system='http://terminology.hl7.org/NamingSystem/usdeanumber'"
* identifier.value -> "PHA02 NCPDP Provider ID" "identifier.system='http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber'"

