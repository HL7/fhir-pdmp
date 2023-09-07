### PDMP Ecosystem

As shown in the Figure below, the overall PDMP ecosystem consists of prescriber systems, pharmacy systems and state-based PDMP systems.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Simplified View of ecosystem interactions</strong></figcaption>
  <p>
  <img src="pdmp-overview-flows.png" style="float:none">  
  </p>
</figure>
</div>

### Use Case
This guide centers around a single use case, in which a provider (prescriber or pharmacist) accesses a Patient’s controlled substance history

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: IG Scope</strong></figcaption>
  <p>
  <img src="pdmp-overview-scope.png" style="float:none">  
  </p>
</figure>
</div>

All other interactions between the parties above--such as a prescription being sent from the prescriber to the dispensing pharmacy, or the pharmacy submitting dispense history data to the PDMP--are critical to the overall PDMP process but are not in-scope for this IG. 

### Abstract Model, Actors and Definitions

_to be reviewed/revised_

This section defines the abstract model which is used to identify the specific actors and interactions that are in-scope for the project. The abstract model is as shown in Figure _XX_ below which consists of two actors namely the PDMP Requester and the PDMP Responder.

- **PDMP Requester:** A system that retrieves patient prescription data from a PDMP on behalf of a prescriber or pharmacist. This system can be thought of as the client in a client-server interaction.
- **PDMP Responder:** A state-based PDMP, intermediary or partner system that acts as a source of prescription data by responding to PDMP data requests. This system can be thought of as the server in a client-server interaction.

**Note**: PDMP Responders may act as intermediaries, providing additional services such as the ability to query multiple state's systems on behalf of a requesting provider. The method for accessing PDMP prescription data is the same whether a PDMP Responder is an intermediary or an actual state system.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 2:  Abstract Model and Actors</strong></figcaption>
  <p>
  <img src="abstract-model.png" style="float:none">  
  </p>
</figure>
</div>


### Current Data Standards Supporting the PDMP Ecosystem

_to be reviewed/revised_

In the current ecosystem, provider and PDMP systems use a combination of NCPDP, ASAP and PMIX/NIEM standards to transmit prescriptions, supply dispense data to PDMPs and access data from other state systems, as illustrated below:

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Standards supporting the PDMP ecosystem</strong></figcaption>
  <p>
  <img src="pdmp-overview-standards.png" style="float:none">  
  </p>
</figure>
</div>

As shown in the figure above, no national standards have been established for the request of dispense data from PDMPs by provider systems. Data transmission methods for that request flow vary state-by-state.

Providers may also currently use web portals to access PDMP data, as shown in the figure below. 

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Practitioners using WebPortals to access  data</strong></figcaption>
  <p>
  <img src="pdmp-data-access-2.png" style="float:none">  
  </p>
</figure>
</div>

In this case, the provider has to interact with a separate web portal not integrated with the EHR to access the  data. These web portals typically have custom integrations with the associated state PDMP systems. 


### Provider Data Access Using FHIR APIs

_to be reviewed/revised_

As discussed above, the current mechanisms to access data vary between the usage of multiple data transmission formats or proprietary mechanisms such as web portals. The  ecossystem can benefit from the usage of FHIR APIs for accessing  data in the following ways:

* Ability to easily integrate  data access in EHR work flows using SMART on FHIR Apps
* Ability to enhance security mechanisms outlined by FHIR and SMART on FHIR between the  actors
* Ability to leverage the  FHIR APIs to build decision support services using CDS Hooks in the EHR work flows

Figure 5a, 5b and 5c below shows the different options for using FHIR APIs to access  data in the EHR work flows including ability to leverage existing investments in intermediaries and PMIX/NIEM protocols.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 5a: Options to leverage FHIR APIs with intermediaries and PMIX/NIEM to access  data</strong></figcaption>
  <p>
  <img src="pdmp-data-access-fhir-1.png" style="float:none">  
  </p>
</figure>
</div>

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 5b: Options to leverage only FHIR APIs with intermediaries to access  data</strong></figcaption>
  <p>
  <img src="pdmp-data-access-fhir-2.png" style="float:none">  
  </p>
</figure>
</div>

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 5c: Options to leverage only FHIR APIs to access  data without intermediaries</strong></figcaption>
  <p>
  <img src="pdmp-data-access-fhir-3.png" style="float:none">  
  </p>
</figure>
</div>


#### Profiles to be used

_to be reviewed/revised_


In order to use FHIR to access  data the following FHIR profiles will be used

* MedicationDispense profile: Used to communicate dispense information.
* MedicationRequest profile: Used to communicate prescription information.
* Medication profile: Used to communicate actual drug information.
* Organization profile: Used to communicate information about the dispensing organization.
* Practitioner profile: Used to communicate information about the prescriber.
* Patient profile: Used to communicate information about the patient.
* Message Header: Used to communicate information about the request headers.


#### FHIR Search API

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
- `whenHandedOver` - date dispensed to the patient

#### Search Workflow
_added 20230907 per group discussion. To be discussed / refined_

Searches may be performed in one or two steps:

**One Step**
-  A single FHIR search can include both MedicationDispense and Patient parameters--serving to both:
  -  locate the intended patient
  -  and filter the set of dispense information to be returned. 


The following FHIR search uses both Patient and MedicationDispense parameters to retrieve a single patient's dispense data from a PDMP Responder.
```
GET [base]/MedicationDispense?patient.name.given=sherlock&patient.name.family=holmes&patient.birthdate=eq1954-01-06&whenHandedOver=ge2023-01-01&whenHandedOver=le2023-12-31&_include=MedicationDispense:subject&_include:recurse=MedicationDispense:authorizingPrescription&_include=MedicationDispense:medication
```
The above API call will fetch all MedicationDispense resources for 2023 dispenses to a patient with a given name of "sherlock", family name of "holmes" and birthdate of "1954-01-06" with a prescription from January 6, 1954 to December 01, 2019. The bundle returned will include MedicationDispense resources and referenced MedicationRequest, Practitioner, Organization, Patient and Medication resources.

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



Note: The data elements returned by these searches and how they map to NCPDP and PMIX/NIEM are discussed in the Data Elements and Mapping section of this guide.


#### Security Considerations for  Transactions

See the [Security](security.html) section for security and privacy guidance.


### Patient Matching Considerations

_to be reviewed/revised_

The PDMP FHIR IG does not add any patient matching requirements to the  actors, but relies on existing practices used for patient matching based on the first name, last name and date of birth provided through the request. Some states may require requesters to include additional parameters to facilitate more accurate patient matching results, however these variations are out of scope for this IG.


<br>

