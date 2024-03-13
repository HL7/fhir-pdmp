**Important elements in this profile:**

- **MedicationDispense.subject**
  - A reference to the patient receiving the medication SHALL be populated
- **MedicationDispense.medicationCodeableConcept (or Medication reference)**
  - The dispensed medication SHALL be populated, including the associated RxNorm code and NDC11 reflecting the medication name, strength and dose form
- **MedicationDispense.performer**
  - The party that dispensed the medication SHALL be populated using either a reference to the performer (PDMP Organization-Pharmacy or US Core Practitioner resource) or an identifier specifying both the identifier value and system
- **MedicationDispense.authorizingPrescription**
  - A reference to the authorizing MedicationRequest SHOULD be populated
- **MedicationDispense.quantity**
  - Quantiy, including numeric value and units SHALL be populated
- **MedicationDispense.daysSupply**
  - Dispensed days supply SHALL be populated
- **MedicationDispense.whenPrepared**
  - The date that the medication was prepared SHALL be populated in the whenPrepared element
- **MedicationDispense.medicationCodeableConcept.userSelected**
  - The userSelected element associated with the drug code received from the pharmacy or other dispensation data source
  - The userSelected element associated with any additional drug codes provided SHALL NOT be populated
- **MedicationDispense.authorizingPrescription.identifier**
  - This element SHOULD be populated with the authorizing prescription's pharmacy-assigned prescription number, if known; otherwise it should be populated with the authorizing prescription's prescriber-system-assigned order number, if known

<p></p>