### FHIR Search API

_to be reviewed/revised_

The FHIR standard provides a set of [search mechanisms](http://hl7.org/fhir/search.html) by which specific FHIR resources can be accessed from a FHIR server. Typically the search parameters are specified in the RESTful URL and accessed using the HTTP GET operation. Searches may also be performed using HTTP POST, with parameters specified in the operation body.

**Search Parameters**
_to be determined which s/b mandatory, must support or optional_

Each FHIR resource in the FHIR specification has associated search parameters that enable filtering based on data within the resource. A parameter may relate to a single element (e.g., a resource status of active, inactive, etc.) or multiple (e.g., a combination of identifier system and value).
For details, see these sections of the FHIR specification:
- [Patient Search Parameters](https://build.fhir.org/patient.html#search)
- [MedicationDispense Search Parameters](https://build.fhir.org/medicationdispense.html#search)

Below are important parameters used when retrieving a patient's medication dispense data from a PDMP Responder:

_Patient resource search parameters_
- `family` - Family name
- `given` - Given name
- `name` - Full name
- `birthdate` - Date of birth
- `gender` - Administrative gender 
- `identifier` - Combination of an identifier system (e.g., drivers license number or SSN) and value
  - E.g., `identifier=http://hl7.org/fhir/sid/us-ssn|123456789`
- Address parameters:
  - `address-city`, `address-state`, `address-postalcode`, `address` (full address)

_MedicationDispense search parameters_
- `patient` - reference to the FHIR Patient. Followed by additional parameters such as `patient.id` (FHIR id on the PDMP system), `patient.identifier` such as a drivers license number, `patient.birthdate`, etc.
- `whenhandedover` - date dispensed to the patient

#### Search Workflow
_added 20230907 per group discussion. To be discussed / refined_

Searches may be performed in one or two steps:

**One Step**
-  A single FHIR search can include both MedicationDispense and Patient parameters--serving to both:
  -  locate the intended patient
  -  and filter the set of dispense information to be returned. 


The following FHIR search uses both Patient and MedicationDispense parameters to retrieve a single patient's dispense data from a PDMP Responder.

`GET [base]/MedicationDispense` <br/>
`?patient.given=karina&patient.family=doe&patient.birthdate=eq2008-08-22`<br/>
`&whenhandedover=ge2023-01-01&whenhandedover=le2023-12-31`<br/>
`&_include=MedicationDispense:subject`<br/>
`&_include:recurse=MedicationDispense:prescription`<br/>
`&_include:recurse=MedicationRequest:requester`<br/>
`&_include:recurse=MedicationDispense:performer`<br/>

The above API call will fetch all MedicationDispense all 2023 dispenses for a patient with a given name of "karina", family name of "doe" and birthdate of "2008-08-22". The bundle returned will include MedicationDispense resources and referenced MedicationRequest, Practitioner (prescriber), Organization (pharmacy) and Patient resources.

<br />

**Two Step** 
- A sequence of two FHIR searches may also be used, as follows:
  - first, locate the patient for whom dispense information is desired
  - second, retrieve only medication dispenses linked to that patient.

This approach has the benefit of enabling the person requesting the information to first confirm the patient match before retrieving their clinical data, which limits the opportunity for other patients' medical information to be unnecessarily released.

When using this approach...
- A search on Patient is performed first, including parameters such as `name` and `birthdate`. The PDMP Responder returns all matching patients
- The requester determines the correct patient record from those returned and notes its Patient.id value. This is the unique identifier for the patient within the PDMP Responder system
- The requester submits a second search for MedicationRequests that includes 
  - a `patient` parameter equaling the Patient.id located in the previous step
  - additional parameters to further filter the results.

The following FHIR search uses both Patient parameters to retrieve a particular patient from a PDMP Responder.

`GET [base]/Patient` <br/>
`?given=karina&family=doe&birthdate=eq2008-08-22&gender=female`

It returns the Patient resource representing the individual, including the Patient.id `0c55727c-9642-421c-a213-ee134d075930` - which is the PDMP Responder system's unique system identifier for the patient. 
- If the response included multiple potential matches for the search criteria, an end-user would locate the intended patient among them.

The second search uses the returned Patient.id to limit results to the selected patient and uses additional MedicationDispense parameters to specify which dispenses to include in the response...

`GET [base]/MedicationDispense` <br />
`&whenhandedover=ge2023-01-01&whenhandedover=le2023-12-31`<br/>
`&_include=MedicationDispense:subject`<br/>
`&_include:recurse=MedicationDispense:prescription`<br/>
`&_include:recurse=MedicationRequest:requester`<br/>
`&_include:recurse=MedicationDispense:performer`<br/>

The above call will return all MedicationDispense all 2023 dispenses for the specified patient. The bundle returned will also include referenced MedicationRequest, Practitioner (prescriber), Organization (pharmacy) and Patient resources.

Note: The data elements returned by these searches and how they map to NCPDP and PMIX/NIEM are discussed in the Data Elements and Mapping section of this guide.


<br>

