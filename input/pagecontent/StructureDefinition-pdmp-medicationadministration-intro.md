**Important elements in this profile:**

- **MedicationAdministration.subject**
  - A reference to the patient receiving the medication SHALL be populated
- **MedicationAdministration.medicationCodeableConcept (or Medication reference)**
  - The administered medication SHALL be populated, including the associated RxNorm code and NDC11 reflecting the medication name, strength and dose form
- **MedicationAdministration.performer**
  - The party that administered the medication SHALL be populated using either a reference to the performer (US Core Practitioner resource) or an identifier specifying both the provider's identifier value and system
- **MedicationAdministration.request**
  - A reference to the authorizing MedicationRequest SHOULD be populated
- **MedicationAdministration.dosage.dose**
  - The dose administered, including numeric value and units SHALL be populated
- **MedicationAdministration.effective**
  - The date(s) that the medication was adminstered to the patient SHALL be populated

<p></p>