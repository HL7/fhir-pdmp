**Notes:**

**Resource entry cardinality.** The only required resource in the Bundle is Patient, and all others are optional. This reflects that PDMP history can include information about dispensations and/or administrations--with each type of event represented by different sets of FHIR resources. 

In addition, profiles for the resources used to represent each kind of event allow for variability in representing the participants and related information; for example, the prescription for a dispensed drug can be represented with identifier in the `MedicationDispense.authorizingPrescription` element or by a reference to a MedicationRequest resource.

<p></p>

**Population when multiple patient records are returned.** The PDMP Responder **SHALL** include multiple Patient resources when a single positive match to the patient data submitted in the request cannot be made or when PDMP history from multiple data sources is returned and the associated patient specifics cannot be resolved to a single Patient resource.

In this situation, MedicationDispense, MedicationAdministration and other returned resources **SHALL** reference the appropriate Patient resource in elements that reference the patient.

<p></p>

**Noting the PDMP data source in returned resources.** All resources returned in this Bundle **SHALL** reference their source (e.g., the state PDMP from which the data was obtained) in the `.meta.source` element.

<p></p>

**History Result Bundle not created if history is not found.** If the PDMP Responder is unable to locate information for the requested patient it **SHALL NOT** create this Bundle or populate the `pdmp-history-data` output parameter.

Instead, the PDMP Responder indicates that history was not found using the response's `outcome` parameter. See [this section](submission-options.html#successful-processing-that-does-not-locate-pdmp-history-for-the-requested-patient) for additional response specifics and an example.

<p></p>

**Request information is not echoed in the History Result Bundle.** This Bundle is intended to contain only information from the PDMP Responder's information sources. It **SHALL NOT** be used to echo back patient or other information submitted in the `pdmp-history` request.

<p></p>

**Use of PDMP and US Core profiles.** Resources returned in this Bundle **SHALL** conform to the profiles identified below for the resource types noted here. 

Additional resource types **MAY** be returned if needed by the PDMP Responder to include aspects of PDMP history that cannot be represented by those listed below. When returning an additional resource type for which there is a US Core profile, the US Core profile **SHOULD** be used.

<p></p>
