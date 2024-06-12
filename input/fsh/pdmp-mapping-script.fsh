Mapping: pdmp-meddispense-to-script-rxhistoryresponse
Source: pdmp-medicationdispense
Target: "http://ncpdp.org/SCRIPT2017071/RxHistoryResponse"
Id: pdmp-medication-ncpdp-script-RxHistoryResponse
Title: "NCPDP SCRIPT 2017071 RxHistory Response - Dispense"
* whenPrepared -> "LastFillDate"
// * authorizingPrescription.authoredOn -> "WrittenDate"
* identifier -> "HistorySource/SourceReference"
* medicationCodeableConcept.text -> "DrugDescription"
* medicationCodeableConcept.coding.system -> "DrugCoded/ProductCode/Qualifier = 'ND'"
* medicationCodeableConcept.coding.code -> "DrugCoded/ProductCode/Code" "coding.system='http://hl7.org/fhir/sid/ndc'"
// * medicationCodeableConcept.ingredient.strength -> "DrugCoded/Strength"
// * medicationCodeableConcept.form -> "Quantity/QuantityUnitOfMeasure"
* quantity -> "Quantity/Value"
* daysSupply -> "DaysSupply"
* extension[pdmp-extension-rx-fill-number] -> "HistorySource/FillNumber"
// * authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed -> "not directly represented in RxHistoryResponse"
* type -> "not supported in RxHistoryResponse"
* extension[pdmp-extension-method-of-payment] -> "HistorySource/PaymentType"
* extension[pdmp-extension-opioid-treatment-code] -> "not supported"
* extension[pdmp-extension-rx-transmission-method] -> "not supported"

Mapping: pdmp-patient-to-script-rxhistoryresponse
Source: pdmp-patient
Target: "http://ncpdp.org/SCRIPT2017071/RxHistoryResponse"
Id: pdmp-patient-ncpdp-script-RxHistoryResponse
Title: "NCPDP SCRIPT 2017071 RxHistory Response - Patient"
* name.given -> "Name/FirstName"
* name.family -> "Name/LastName"
* birthDate -> "DateOfBirth"
* gender -> "Gender"
* address.line -> "Address/AddressLine1"
* address.line -> "Address/AddressLine2"
* address.city -> "Address/City"
* address.state -> "Address/StateProvince"
* address.postalCode -> "Address/PostalCode"
* identifier.value -> "Identification/SocialSecurity" "identifier.system=http://hl7.org/fhir/sid/us-ssn'"


Mapping: pdmp-pharmacy-to-script-rxhistoryresponse
Source: pdmp-organization-pharmacy
Target: "http://ncpdp.org/SCRIPT2017071/RxHistoryResponse"
Id: pdmp-pharmacy-ncpdp-script-RxHistoryResponse
Title: "NCPDP SCRIPT 2017071 RxHistory Response - Patient"
* name -> "BusinessName"
* address.line -> "Address/AddressLine1"
* address.line -> "Address/AddressLine2"
* address.city -> "Address/City"
* address.state -> "Address/StateProvince"
* address.postalCode -> "Address/PostalCode"
* telecom -> "CommunicationNumbers/PrimaryTelephone"
* identifier.value -> "Identification/DEANumber" "identifier.system='http://terminology.hl7.org/NamingSystem/usdeanumber'"
* identifier.value -> "Identification/NCPDPID" "identifier.system='http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber'"
* identifier.value -> "Identification/NPI" "identifier.system='http://hl7.org/fhir/sid/us-npi'"

