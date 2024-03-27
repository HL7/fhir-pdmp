Mapping: pdmp-meddispense-to-pmix-report
Source: pdmp-medicationdispense
Target: "http://pmixpmp.org/niem/4.0/extension"
Id: pdmp-medication-ncpdp-pmix-report
Title: "PMIX/NIEM 4.0 Prescription Report"

* whenPrepared ->  "pmp:PrescriptionFilledDate"
* identifier.value ->  "pmp:PrescriptionNumberText"
* medicationCodeableConcept.text ->  "pmp:DrugProductNameText"
* quantity ->  "pmp:DispensedQuantity"
* daysSupply ->  "pmp:DaysSupplyCount"
* extension[rx-fill-number] ->  "pmp:DrugRefillNumberCount"
* type -> "pmp:PartialFillIndicator"
* medicationCodeableConcept.coding.system -> "MedicationDispensed/DrugCoded/ProductCode/Qualifier"
* medicationCodeableConcept.coding.code -> "MedicationDispensed/DrugCoded/ProductCode/Code"
* extension[rx-method-of-payment] -> "pmp:MethodOfPaymentCode"
// * authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed -> "pmp:RefillsAuthorizedCount"
// * authorizingPrescription.authoredOn -> "nc:Date"

/* to resolve from the table-based mapping table
Drug Strength[1]	pmp:DrugStrengthText	MedicationDispense.medicationReference.ingredient.strength
Dosage Form[2]	pmp:DrugUnitOfMeasureText	MedicationDispense.medicationReference.form
*/