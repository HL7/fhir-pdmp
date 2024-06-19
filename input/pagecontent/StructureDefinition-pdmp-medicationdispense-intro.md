
- <mark>Changes are highlighted in the text on this page when possible
- <mark>Changes that can't be highlighted on this page are:
    - <mark>all code formatting (</mark> ```for example```<mark> ) has been removed
    - <mark>Mappings to NCPDP SCRIPT and PMIX have been updated
    - <mark>Mapping to ASAP Reporting have been added (click on the Mapping tab)
    
**Important elements in this profile:**

- **MedicationDispense.subject**
  - A reference to the patient receiving the medication SHALL be populated
- **MedicationDispense.medicationCodeableConcept (or Medication reference)**
  - The dispensed medication SHALL be populated, including the associated RxNorm code and NDC11<mark>, as available,</mark> reflecting the medication name, strength and dose form
  - For information concerning mapping between NDC and RxNorm, see   [Mapping NDC, RXCUI, and Drug Names in the RxNorm Files](https://www.nlm.nih.gov/research/umls/user_education/quick_tours/RxNorm/ndc_rxcui/NDC_RXCUI_DrugName.html)
- **MedicationDispense.performer**
  - The party that dispensed the medication SHALL be populated using either a reference to the performer (PDMP Organization-Pharmacy or US Core Practitioner resource) or an identifier specifying both the identifier value and system
- **MedicationDispense.authorizingPrescription**
  - A reference to the authorizing MedicationRequest SHOULD be populated
- **MedicationDispense.quantity**
  - Quantity, including numeric value and units SHALL be populated
  - When the dispense quantity is stated in terms of "eaches" (e.g., tablets, capsules, etc.), populate only the quantity.unit value with the text "each". Do not populate the quantity.system or quantity.code values
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
<p></p>

**Technical note:**

A rule defined in the base MedicationDispense StructureDefinition causes an error to be produced when a valid date is present in MedicationDispense.whenPrepared and a [Data Absent Reason extension](https://hl7.org/fhir/R4/extension-data-absent-reason.html) is used in place of MedicationDispense.whenHandedOver. This rule (invariant mdd-1), which asserts that the whenPrepared date must precede the whenHandedOver date, interprets whenHandedOver's value as 'null' in this situation, causing the test to fail. A request has been submitted to adjust the rule to accommodate this valid use of the Data Absent Reason extension in a future FHIR release.
 
<p></p>
<p></p>
