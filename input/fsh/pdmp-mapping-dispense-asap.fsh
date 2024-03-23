/*
2024-03-22 smrobertson
    ASAP mapping has been excluded from PDMP on FHIR STU1
    this information retained if ASAP mapping is brought back into the IG

//Alias:  = http://AdHocPDMPRequestResponse/AdHocPDMPRequestResult/Details/PDMPDetailedResponse/PrescriptionDetails/PharmacyDispenseInfo/Prescriptions/DispensingEventInfo/

Mapping: pdmp-meddispense-to-asap-ws
Source: pdmp-medicationdispense
Target: "http://www.asapnet.org/PDMPrequest"
Id: pdmp-medication-asap-ws
Title: "ASAP WebService v2.1A"

// * -> "Prescriber/Name/GivenName"
// * -> "Prescriber/Name/SurName"
// * -> "Prescriber/DEANumber"
// * -> "Prescriber/NPI"
// * -> "Prescriber/StateLicenseNumber"
// * -> "Prescriber/Location/Phone"
// * -> "Prescriber/Location/StreetAddress"
// * -> "Prescriber/Location/StreetAddress2"
// * -> "Prescriber/Location/StateUsPostalServiceCode"
// * -> "Prescriber/Location/LocationPostalCode"

* whenPrepared -> "DispensingEvent/DispenseDate" 
// * authorizingPrescription.MedicationRequest.authoredOn -> "DispensingEvent/WrittenDate" 
* identifier -> "DispensingEvent/PrescriptionNumber" 
// * medicationCodeableConcept[NDC].coding.system -> "DispensingEvent/ProductIDQualifier" 
// * medicationCodeableConcept[NDC].coding.code -> "DispensingEvent/ProductID" 
* medicationCodeableConcept.text -> "DispensingEvent/DrugName" 
// * -> "DispensingEvent/Strength" 
// * -> "DispensingEvent/DosageForm" 
* quantity -> "DispensingEvent/Quantity" 
* daysSupply -> "DispensingEvent/DaysSupply" 
// * authorizingPrescription.MedicationRequest.dispenseRequest.numberOfRepeatsAllowed -> "DispensingEvent/RefillsAuthorizied" 
* extension[rx-fill-number] -> "DispensingEvent/FillNumber" 
// * -> "DispensingEvent/RefillStatus" 
// * -> "DispensingEvent/PartialFillIndicator" 
// * -> "DispensingEvent/PaymentType" 
// * medicationCodeableConcept[rxNorm].coding.code -> "DispensingEvent/RxNormCode" 
// * -> "DispensingEvent/ElectronicPrescriptionReferenceNumber" 
// * -> "DispensingEvent/ElectronicPrescriptionOrderNumber" 
* whenHandedOver -> "DispensingEvent/DateSold" 
// * authorizingPrescription.MedicationRequest.dispenseRequest.quantity -> "DispensingEvent/QuantityPrescribed" 
* dosageInstruction.text -> "DispensingEvent/RxSIG" 

// * -> "DispensingEvent/TreatmentTypeCode" 
// * -> "DispensingEvent/DiagnosisCode" 
// * -> "DispensingEvent/RxSerialNumber/IssuingState"
// * -> "DispensingEvent/RxSerialNumber/SerialNumber" 
// * -> "DispensingEvent/PickupOrDropOffPerson/Name/GivenName"
// * -> "DispensingEvent/PickupOrDropOffPerson/Name/MiddleName"
// * -> "DispensingEvent/PickupOrDropOffPerson/Name/SurName"
// * -> "DispensingEvent/PickupOrDropOffPerson/Name/NameSuffix"
// * -> "DispensingEvent/PickupOrDropOffPerson/IDQualifer"
// * -> "DispensingEvent/PickupOrDropOffPerson/ID"
// * -> "DispensingEvent/PickupOrDropOffPerson/RelationshipCode"
*/
