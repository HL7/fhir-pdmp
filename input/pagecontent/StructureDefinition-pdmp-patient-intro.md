**Important elements in this profile:**

- **Patient.identifier**
  - A patient identifier SHALL be populated. Typical identifiers include driver's license, medical record number and Social Security Number. Usage may be directed by the jurisdiction
- **Patient.name**
  - Patient family name and given name SHALL be populated
- **Patient.gender**
  - SHALL be populated with a value from the associated value set
- **Patient.birthDate**
  - SHALL be populated with a full date (year, month and day)
- **Patient.address and contact information**
  - The patient's address, telephone and other contact information is specified as Must Support: Implementers must support usage where directed by the jurisdiction

**Populating when the patient is an animal:**

- **Patient.patient-animal extension**
  - Populate this extension to indicate that the patient is an animal. Include the animal's species and other information as directed by the jurisdiction
- **Patient.name**
  - Populate the animal's name in name.given, and the owner's family name in name.family
- **Patient.birthDate**
  - Populate birthDate value if known. Otherwise, populate birthdate.extension using the [data absent reason extension](http://hl7.org/fhir/StructureDefinition/data-absent-reason) with the value "unkonwn"
- **RelatedPerson representing the owner**
  - When the patient is an animal, the Patient resource SHOULD be accompanied by a RelatedPerson reflecting the animal's owner's information, which a RelatedPerson.relationship value of "animal-owner" from the [PDMP Patient Relationship ValueSet](ValueSet-pdmp-patient-relationship.html)
  
  

<p></p>

<p></p>