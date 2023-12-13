This section identifies the CapabilityStatements defined for this implementation guide. The section outlines conformance requirements for each of the PDMP FHIR IG actors which includes the specific profiles, operations and security mechanisms that need to be supported.

**Notes**: 
* The individual profiles contained in this guide identify specific structural constraints, terminology bindings and invariants.
* This section is in-process and will be updated based on review and input from PDMP stakeholders

#### Conformance requirements for the PDMP Responder

The section describes the expected capabilities of the PDMP Responder actor which is responsible for providing responses to the requests submitted by PDMP Requester applications.

##### Behavior

The PDMP Responder **SHALL**:

* Support the PDMP Patient, PDMP MedicationDispense and PDMP Pharmacy Organization resource profiles.
* Support the US Core Practitioner, US Core PractitionerRole and US Core Organization (for organizations other than pharmacies) profiles.
* Support the get-pdmp-history operation and associated Parameters and Bundle profiles.
* Implement the RESTful behavior according to the [FHIR specification](https://www.hl7.org/fhir/http.html).
	* which includes returning the following response classes:
		* (Status 200): successful operation
		* (Status 400): invalid parameter
		* (Status 401/4xx): unauthorized request
		* (Status 403): insufficient scope
		* (Status 404): unknown resource
		* (Status 410): deleted resource.
* Support JSON resource formats for all  interactions.
* Declare a CapabilityStatement identifying the list of profiles, operations, and search parameters supported.

The PDMP Responder **SHOULD**:

* Support the following US Core and PDMP resource profiles:
	* US Core Medication
	* PDMP MedicationAdministration

* Support xml resource formats for all PDMP interactions.
* Identify the US Core profile(s) and PDMP profiles supported as part of the FHIR meta.profile attribute for each instance.

The PDMP Responder MAY:

* Support submission of the get-pdmp-history operation using FHIR Messaging, including support for the associated MessageDefinition and guidance.


##### Security:

* The PDMP Responder **SHOULD** support the SMART Backend Services Authorization Guide for verifying authentication and providing authorization to PDMP Requesters.

* The PDMP Responder **MAY** support the HTTP Header parameter X-Request-ID for request correlation between the PDMP Requester and PDMP Responder.


#### Conformance requirements for the PDMP Requester

The section describes the expected capabilities of the PDMP Requester actor which is responsible for providing responses to the queries submitted by the PDMP Requester applications.


##### Behavior

The PDMP Requester **SHALL**:

* Support the PDMP Patient, PDMP MedicationDispense and PDMP Pharmacy Organization resource profiles.
* Support the US Core Practitioner, US Core PractitionerRole and US Core Organization (for organizations other than pharmacies) profiles.
* Support the get-pdmp-history operation and associated Parameters and Bundle profiles.
* Consume the RESTful responses according to the FHIR specification.
	* which includes returning the following response classes:
		* (Status 200): successful operation
		* (Status 400): invalid parameter
		* (Status 401/4xx): unauthorized request
		* (Status 403): insufficient scope
		* (Status 404): unknown resource
		* (Status 410): deleted resource.
* Support JSON resource formats for all  interactions.

The PDMP Requester **SHOULD**:

* Support the following US Core and PDMP resource profiles:
	* US Core Medication
	* PDMP MedicationAdministration

* Support xml resource formats for all  interactions.



##### Security:

* The PDMP Requester **SHOULD** support the SMART Backend Services Authorization Guide applicable to clients.

* The PDMP Requester **MAY** add the HTTP Header parameter X-Request-ID as part of the Search request for request correlation between the PDMP Requester and PDMP Responder.



<br>



