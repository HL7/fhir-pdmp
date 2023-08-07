This section identifies the CapabilityStatements defined for this implementation guide. The section outlines conformance requirements for each of the PDMP FHIR IG actors which includes the specific profiles, operations, security mechanisms and search parameters that need to be supported.

**Note**: The individual profiles identify the structural constraints, terminology bindings and invariants.

#### Conformance requirements for the PDMP Responder

The section describes the expected capabilities of the PDMP Responder actor which is responsible for providing responses to the queries submitted by the PDMP Requester applications.

##### Behavior

The PDMP Responder **SHALL**:

* Support the US Core Patient, US Core Practitioner, US Core Organization resource profiles.
* Support the PDMP MedicationRequest and MedicationDispense Profile.
* Implement the RESTful behavior according to the [FHIR specification](https://www.hl7.org/fhir/http.html).
	* which includes returning the following response classes:
		* (Status 200): successful operation
		* (Status 400): invalid parameter
		* (Status 401/4xx): unauthorized request
		* (Status 403): insufficient scope
		* (Status 404): unknown resource
		* (Status 410): deleted resource.
* Support json resource formats for all  interactions.
* Declare a CapabilityStatement identifying the list of profiles, operations, and search parameters supported.

The PDMP Responder **SHOULD**:

* Support the following US Core and PDMP resource profiles:
	* US Core Medication
	* PDMP MedicationAdministration

* Support xml resource formats for all PDMP interactions.
* Identify the US Core profile(s) and PDMP profiles supported as part of the FHIR meta.profile attribute for each instance.

The PDMP Responder MAY:

* Support other US Core and PDMP resource profile

##### Profile Interactions:

* The PDMP Responder **SHALL** support the FHIR Search interaction for MedicationDispense profile.

* The PDMP Responder **SHOULD** support the FHIR Read profile interaction MedicationDispense profile.

* The PDMP Responder **MAY** support other FHIR profile interactions.


##### Security:

* The PDMP Responder **SHALL** support the SMART Backend Services Authorization Guide for verifying authentication and providing authorization to PDMP Requesters.

* The PDMP Responder **SHALL** support the HTTP Header parameter X-Request-ID for request coorelation between the PDMP Requester and PDMP Responder.

##### Search:

The PDMP Responder **SHALL** support the following search parameters and combination for the MedicationDispense resource

* Chained Search parameters
	* subject:Patient.name.given - Patient's first name
	* subject:Patient.name.family - Patient's family name
	* subject:Patient.birthdate - Patient's birth date
	* authorizingPrescription.dispenseRequest.validityPeriod - To specify the date range for the  data retrieval

The PDMP Responder **SHALL** support the following _include parameters for the MedicationDispense Search operations

* _include=MedicationDispense:subject - Returns the Patient Resource information
* _include:recurse=MedicationDispense:authorizingPrescription - Returns the MedicationRequest, Practitioner Resource information and Organization information
* _include=MedicationDispense:medication - Returns the Medication Resource information


The following is an example of the query.

`GET [base]/MedicationDispense?subject:Patient.name.given=peter&subject:Patient.name.family=jacobs&subject:Patient.birthdate=eq1973-11-25&authorizingPrescription.dispenseRequest.validityPeriod=ge2010-01-01&authorizingPrescription.dispenseRequest.validityPeriod=le2015-12-31&_include=MedicationDispense:subject&_include:recurse=MedicationDispense:authorizingPrescription&_include=MedicationDispense:medication`

The above API will fetch all MedicationDispense resources for Patient with a given name of "peter" and family name of "jacobs" with a birthdate of "1973-11-25" with a prescription that falls within in a 5 year window starting from January 1st 2010 to December 31st 2015 and as part of the returned information will include MedicationDispense, MedicationRequest, Practitioner, Organization, Patient and Medication information as part of the returned bundle.

All other information required to authenticate and authorize a PDMP Requester is captured as part of registering the PDMP Requester following the SMART Backend Services Authorization Guide.


#### Conformance requirements for the PDMP Requester

The section describes the expected capabilities of the PDMP Requester actor which is responsible for providing responses to the queries submitted by the PDMP Requester applications.

##### Behavior

The PDMP Requester **SHALL**:

* Support the US Core Patient, US Core Practitioner, US Core Organization resource profiles.
* Support the PDMP MedicationRequest and MedicationDispense Profile.
* Consume the RESTful responses according to the FHIR specification.
	* which includes returning the following response classes:
		* (Status 200): successful operation
		* (Status 400): invalid parameter
		* (Status 401/4xx): unauthorized request
		* (Status 403): insufficient scope
		* (Status 404): unknown resource
		* (Status 410): deleted resource.
* Support json resource formats for all  interactions.

The PDMP Requester **SHOULD**:

* Support the following US Core and PDMP resource profiles:
	* US Core Medication
	* PDMP MedicationAdministration

* Support xml resource formats for all  interactions.


##### Profile Interactions:

* The PDMP Requester **SHALL** support the FHIR Search interaction for MedicationDispense profile.

* The PDMP Requester **SHOULD** support the FHIR Read profile interaction for MedicationDispense profile.

* The PDMP Requester **MAY** support other FHIR profile interactions.


##### Security:

* The PDMP Requester **SHALL** support the SMART Backend Services Authorization Guide applicable to clients.

* The PDMP Requester **SHALL** add the HTTP Header parameter X-Request-ID as part of the Search request for request coorelation between the PDMP Requester and PDMP Responder.

##### Search:

The PDMP Requester **SHALL** invoke the Search operation on the PDMP Responder including the following search and _include parameters when requesting  data using the MedicationDispense resource

* Chained Search parameters
	* subject:Patient.name.given - Patient's first name
	* subject:Patient.name.family - Patient's family name
	* subject:Patient.birthdate - Patient's birth date
	* authorizingPrescription.dispenseRequest.validityPeriod - To specify the date range for the  data retrieval

The PDMP Requester **SHALL** include the following _include parameters for the MedicationDispense Search operations

* _include=MedicationDispense:subject - Returns the Patient Resource information
* _include:recurse=MedicationDispense:authorizingPrescription - Returns the MedicationRequest, Practitioner Resource information and Organization information
* _include=MedicationDispense:medication - Returns the Medication Resource information


The following is an example of the query.

`GET [base]/MedicationDispense?subject:Patient.name.given=peter&subject:Patient.name.family=jacobs&subject:Patient.birthdate=eq1973-11-25&authorizingPrescription.dispenseRequest.validityPeriod=ge2010-01-01&authorizingPrescription.dispenseRequest.validityPeriod=le2015-12-31&_include=MedicationDispense:subject&_include:recurse=MedicationDispense:authorizingPrescription&_include=MedicationDispense:medication`

The above API will fetch all MedicationDispense resources for Patient with a given name of "peter" and family name of "jacobs" with a birthdate of "1973-11-25" with a prescription that falls within in a 5 year window starting from January 1st 2010 to December 31st 2015 and as part of the returned information will include MedicationDispense, MedicationRequest, Practitioner, Organization, Patient and Medication information as part of the returned bundle.


<br>



