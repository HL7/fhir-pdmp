Mapping: pdmp-meddispense-to-script-rxhistoryresponse
Source: pdmp-medicationdispense
Target: "http://ncpdp.org/SCRIPT2017071/RxHistoryResponse"
Id: pdmp-medication-ncpdp-script-RxHistoryResponse
Title: "NCPDP SCRIPT 2017071 RxHistory Response"

* whenPrepared ->  "MedicationDispensed/LastFillDate"
* identifier ->  "MedicationDispensed/HistorySource/SourceReference"
* identifier.value ->  "MedicationDispensed/HistorySource/SourceReference"
* medicationCodeableConcept.text ->  "MedicationDispensed/DrugDescription"
* quantity ->  "MedicationDispensed/Quantity/Value"
* daysSupply ->  "MedicationDispensed/DaysSupply"
* extension[rx-fill-number] ->  "MedicationDispensed/HistorySource/FillNumber"
* type -> "(not supported in RxHistoryResponse)" "Partial fill indicator"
* note  ->  "MedicationDispensed/HistorySource/PaymentType"  
* medicationCodeableConcept.coding.system -> "MedicationDispensed/DrugCoded/ProductCode/Qualifier"
* medicationCodeableConcept.coding.code -> "MedicationDispensed/DrugCoded/ProductCode/Code"
* extension[rx-method-of-payment] -> "Message/Body/RxHistoryResponse/MedicationDispensed/HistorySource/PaymentType"
// * authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed -> "(not directly represented in RxHistoryResponse)"
// * authorizingPrescription.authoredOn ->  "MedicationDispensed/WrittenDate"

/* to resolve from the table-based mapping table
Drug Strength[1]	Message/Body/RxHistoryResponse/MedicationDispensed/DrugCoded/Strength	MedicationDispense.medicationReference.ingredient.strength
    * ingredient.strength ->  "MedicationDispensed/DrugCoded/Strength"
Dosage Form[2]	Message/Body/RxHistoryResponse/MedicationDispensed/Quantity/QuantityUnitOfMeasure	MedicationDispense.medicationReference.form
    * medicationReference.form ->  "MedicationDispensed/Quantity/QuantityUnitOfMeasure"
*/