
- <mark>Changes are highlighted in the text on this page when possible
- <mark>Changes that can't be highlighted on this page are:
    - <mark> all code formatting (```for example```) has been removed

**Notes:**

- **Detailed parameter definitions.** The table below describes the input and output parameters, including their uses and base FHIR resource types.The content conveyed in those parameters is further constrained by the [PDMP Parameters - Request](StructureDefinition-pdmp-parameters-request.html) and [PDMP Parameters - Response](StructureDefinition-pdmp-parameters-response.html) profiles referenced below. 

<p></p>

- **PDMP dispensation history data definition.** The [PDMP History Result Bundle](StructureDefinition-pdmp-bundle-history-result.html) profile further profiles the pdmp-history-data response parameter's content.

<p></p>

- **Output parameter cardinality.** The four response parameters are each individually optional, but at least one must be present in the operation response, reflecting these scenarios:
  - **PDMP history available.** pdmp-history-data and/or pdmp-history-link are populated when the PDMP Responder has PDMP information available for the requested patient.
  - **Pre-stage-only.** outcome and, optionally, pre-stage-retrieval-key are populated when the PDMP Responder is replying to a request in which the pre-stage-only parameter is set to true (see details below).
  - **Patient not found.** outcome is populated if the PDMP Responder is unable to locate information for the requested patient. pdmp-history-link may also be populated in this scenario. See [this section](submission-options.html#successful-processing-that-does-not-locate-pdmp-history-for-the-requested-patient) for additional response specifics and an example.
  - **Fatal exception.** only outcome is populated if the PDMP Responder encounters an exception that prevents completion of response processing. See [this section](submission-options.html#error-preventing-completion-of-response-processing) for additional response specifics and an example.
  - **Non-fatal exception impacting response content.** outcome is populated in addition to one or more other parameters if the PDMP Responder encounters a non-fatal exception when executing a request that impacts the content of the response,  to indicate the issue and impact on the PDMP history content see [this section](submission-options.html#non-fatal-processing-exception) for additional response specifics and an example.
  - **Other warning or information.** outcome may be populated in addition to one or more other parameters to return other warning or processing information.
  
  <p></p>

 - **Requests to stage data for later retrieval.** A request with the pre-stage-only input parameter set to true directs the PDMP Responder to gather information for the requested patient and stage it for retrieval via a subsequent pdmp-history call.
   - In response, the PDMP Responder populates the outcome parameter with an indication that the request was accepted and optionally returns a key value in the pre-stage-retrieval-key output parameter that the PDMP Requester must include in the subsequent operation call's pre-stage-retrieval-key input parameter.
   - see [this section](submission-options.html#successful-acceptance-of-a-pre-stage-only-request) for additional response specifics and an example.

<p></p>

 - **FHIR resource references.** Resources conveyed in the operation's input and output parameters will 

<p></p>

 - **FHIR resource references.** Resources conveyed in the operation's input and output parameters will typically contain references to other FHIR resources. Certain of these references are expected to resolve to other resources in the respective submission or response. Others, however, may refer to resources that are not present in the operation because they are not pertinent to the PDMP use case. Below are this guide's expectations:

<p></p>

   - **Operation request:**
     - _Authorized Practitioner Relationships._ The PractitionerRole resource submitted in the authorized-practitioner-role parameter: 
       - **SHOULD** contain a reference to the Practitioner resource submitted in the corresponding authorized-practitioner parameter in its .practitioner element.
       - **SHOULD** contain a reference to the Organization resource submitted in the corresponding authorized-practitioner-organization parameter in its .organization element.
     - _Delegate Relationships._ The PractitionerRole resource submitted in the delegate-practitioner-role parameter: 
       - **SHOULD** contain a reference to the Practitioner resource submitted in the corresponding delegate-practitioner parameter in its .practitioner element.
       - **SHOULD** contain a reference to the Organization resource submitted in the corresponding delegate-organization parameter in its .organization element.
       - _Note:_ a delegate is an individual authorized by a provider or pharmacist who is requesting the PDMP information on their behalf.  For example, an intake or triage person in an emergency department may be a delegate for a physician in that department
     - _Other references_ may be present in submitted resources but are not required to resolve to other resources in the request.

   <p></p>

   - **Operation response - PDMP History Data parameter:** 
     - Resources contained in the bundle conveyed in the pdmp-history-data parameter are expected to reference one another according to the rules of the associated FHIR profiles. 
     - See [PDMP History Result Bundle](StructureDefinition-pdmp-bundle-history-result.html) for details about the Bundle that populates this parameter.
 
<p></p>

**Examples:**

An example of the Parameters resource submitted to this operation:
- [pdmp-history-input-parameters-1](Parameters-pdmp-history-input-parameters-1.html)

An example of the Parameters resource returned by this operation:
- [pdmp-history-output-parameters-1](Parameters-pdmp-history-output-parameters-1.html)


<p></p>