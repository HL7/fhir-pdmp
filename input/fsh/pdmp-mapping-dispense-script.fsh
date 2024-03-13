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
* type -> "not supported in RxHistoryResponse" "Partial fill indicator"
* note  ->  "MedicationDispensed/HistorySource/PaymentType"  "{are we including this in our response?}"
* medicationCodeableConcept.coding.system -> "MedicationDispensed/DrugCoded/ProductCode/Qualifier"
* medicationCodeableConcept.coding.code -> "MedicationDispensed/DrugCoded/ProductCode/Code"
*  -> "missing"


/* to resolve from the table-based mapping table
Prescription Written Date	Message/Body/RxHistoryResponse/MedicationDispensed/WrittenDate	MedicationDispense.authorizingPrescription.authoredOn
    * authorizingPrescription.authoredOn ->  "MedicationDispensed/WrittenDate"
Prescription Number	Message/Body/RxHistoryResponse/MedicationDispensed/HistorySource/SourceReference	MedicationDispense.Identifier
Drug Strength[1]	Message/Body/RxHistoryResponse/MedicationDispensed/DrugCoded/Strength	MedicationDispense.medicationReference.ingredient.strength
    * ingredient.strength ->  "MedicationDispensed/DrugCoded/Strength"
Dosage Form[2]	Message/Body/RxHistoryResponse/MedicationDispensed/Quantity/QuantityUnitOfMeasure	MedicationDispense.medicationReference.form
    * medicationReference.form ->  "MedicationDispensed/Quantity/QuantityUnitOfMeasure"
Refills Authorized	not directly represented in RxHistoryResponse	MedicationDispense.authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed
    * authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed -> "" "{not directly represented in RxHistoryResponse}"
Partial Fill Indicator		MedicationDispense.type
Method of Payment	Message/Body/RxHistoryResponse/MedicationDispensed/HistorySource/PaymentType
*/