This example illustrates how a request is populated when submitted from a veterinary setting and the patient is an animal. 

- The Patient.patient-animal extension is populated to indicate that the patient is an animal. The animal's species is included from the [PDMP Species Type ValueSet](ValueSet-pdmp-species-type.html)
- **Patient.name**
  - Populate the animal's name in name.given, and the owner's family name in name.family
- **Patient.birthDate**
  - Populate birthDate value if known. Otherwise, populate birthdate.extension using the [data absent reason extension](http://hl7.org/fhir/StructureDefinition/data-absent-reason) with the value "unkonwn"
- **RelatedPerson representing the owner**
  - When the patient is an animal, the Patient resource **SHOULD** be accompanied by a RelatedPerson reflecting the animal's owner's information
  

<p></p>


<h3>Example data content</h3>

_to be added_

<hr>