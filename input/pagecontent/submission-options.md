This section describes how a PDMP Requester can retrieve a patient's information from a PDMP Responder by calling the `pdmp-history` operation directly or by submitting that operation request using FHIR messaging.

<p></p>

### PDMP History Operation

The PDMP request and response are accomplished using a FHIR Operation ([pdmp-history](OperationDefinition-pdmp-history.html)) which is invoked by POSTing a FHIR Parameters resource containing patient and requesting provider details to the PDMP Responder's `Patient/$pdmp-history` endpoint. In response, the PDMP Responder gathers PDMP history information and returns it within another Parameters resource.

The PDMP history may be returned as... 
- discrete FHIR data returned in the operation response's `pdmp-history-data` parameter

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and / or

- a URL to access a report containing PDMP history--returned in the response's `pdmp-history-link` parameter.

A PDMP Responder may choose to implement either or both of those options, with consideration for applicable state rules or other requirements.

Also contained in the response are: 
- an optional identifier to be submitted in a subsequent request, in the  `pre-stage-retrieval-key` parameter
- processing information in the form of a FHIR OperationOutcome resource, returned in the `outcome` parameter.

<p></p>

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: High-level PDMP Operation Flow and Content</strong></figcaption>
  <p>
  <img src="operation-flow.png" style="float:none">  
  </p>
</figure>
</div>

<p></p>

Use of an operation enables the process to support current PDMP processing requirements including:

- submission of requesting provider and delegate details and facility information which are used for authorization and record-keeping 
- support for a "pre-stage-only" request processing option which instructs the PDMP Responder to tee up results to be returned in response to a subsequent request from the PDMP Requester
- support for the return of PDMP history in the form of discrete FHIR data
- support for the return of a URL for accessing a PDMP history.

**Operation definition.** See the [pdmp-history OperationDefinition](OperationDefinition-pdmp-history.html) for an overview of the operation's inputs and outputs, and the following Parameter definitions for additional details:
- [request parameter details](StructureDefinition-pdmp-parameters-request.html)
- [response parameter details](StructureDefinition-pdmp-parameters-response.html)

**Submission options.** The operation can be called in two ways:
- **direct operation call** using a RESTful POST to the PDMP Responder's `[base]/Patient/$pdmp-history` endpoint
- **using FHIR messaging**, by submitting the operation's request parameters within a bundle that also includes a MessageHeader that references the `pdmp-history` operation definition. See [the messaging section below](submission-options.html#message-submission) for details.

<p></p>

### Message submission
The PDMP  `pdmp-history` operation may also be invoked using FHIR messaging. The PDMP Requester submits the operation's request parameters within a FHIR Bundle that also includes a MessageHeader. The `event` element in the MessageHeader references the `pdmp-history` operation definition.

A message-based request is illustrated below:

<p></p>

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: PDMP Message Flow</strong></figcaption>
  <p>
  <img src="message-flow.png" style="float:none">  
  </p>
</figure>
</div>

<p></p>

The messaging method may also be used to transmit requests via an intermediary such as an e-prescribing network or other healthcare data exchange. The MessageHeader supplies elements that the participants may use to: 
- specify which PDMP Responder to forward the message to
- link requests and responses during routing
- log processing information .

Below is an illustration of submission through an intermediary:

<p></p>

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Intermediary Message Flow</strong></figcaption>
  <p>
  <img src="intermediary-flow.png" style="float:none">  
  </p>
</figure>
</div>

<p></p>

#### Request message content

The PDMP Request message includes a MessageHeader and a Parameters resource containing the information needed to retrieve a single individual's information from a PDMP Responder (see [request parameter details](StructureDefinition-pdmp-parameters-request.html)). Note that the MessageHeader.event of the request references the same [pdmp-history operation](OperationDefinition-pdmp-history.html) that can be invoked directly using a RESTful POST to in non-messaging environments.

Further details and examples are at [PDMP Bundle - Request Message](StructureDefinition-pdmp-bundle-request-message.html) 

<p></p>

#### Response message content

The PDMP Response message contains a MessageHeader and the [response Parameters resource](StructureDefinition-pdmp-parameters-request.html) defined in the [pdmp-history operation](OperationDefinition-pdmp-history.html).

Further details and examples are at [PDMP Bundle - Response Message](StructureDefinition-pdmp-bundle-response-message.html) 

<p></p>

#### Message submission details
Invoking the `pdmp-history` operation via FHIR messaging is accomplished following the guidance provided in the [Invoking Operations via Messages](http://hl7.org/fhir/messaging.html#operations) section of the FHIR specification.

**MessageHeader population**

The MessageHeader.event of the request message references the [`pdmp-history` operation](OperationDefinition-pdmp-history.html). Specifically:
- MessageHeader.eventCoding.system = `"urn:ietf:rfc:3986"`
- MessageHeader.eventCoding.code = `"http://hl7.org/fhir/us/pdmp/OperationDefinition/pdmp-history"`

**Submission endpoint and parameters**

The request message is POSTed to the PDMP Responder using the standard FHIR $process-message operation...
  - URL: `[base]/$process-message`
  - Details from the base FHIR specification are [here](https://www.hl7.org/fhir/operation-messageheader-process-message.html).

Per the standard, the $process-message operation **SHALL** contain a single `content` parameter consisting of a FHIR message (a Bundle containing a MessageHeader resource).  

The `async` and `response-url` Process Message parameters may be used when supported by the PDMP Responder.

PDMP messages are exchanged using standard FHIR messaging features. 
- See [Messaging Using FHIR Resources](https://www.hl7.org/fhir/messaging.html) for messaging conventions contained in the FHIR specification.

<p></p>

### Returning Processing Information and Exceptions

This section provides guidance for PDMP Responders for responding in situations where the request cannot be processed in part or in whole, or where there is other processing information to be returned in the operation response.

All scenarios described below communicate processing information using the operation's `outcome` parameter, which holds an OperationOutcome resource that gives the details of one or more processing aspects. This OperationOutcome contains:

* a definition of severity in the `OperationOutcome.issue.severity` field which must come from [this FHIR value set](https://hl7.org/fhir/R4/valueset-issue-severity.html). 
* a definition of the type of error in the `OperationOutcome.issue.code` element (e.g., `incomplete` transient error, `business-rule` processing error, etc.) which must come from [this FHIR value set](https://hl7.org/fhir/R4/valueset-issue-type.html).
* additional diagnostic details of the error or other processing condition in `OperationOutcome.diagnostics` property
* an `OperationOutcome.issue.details.coding.code` value to further define the processing condition
* a human-readable version of the condition's details in the `OperationOutcome.issue.details.coding.display` field.

PDMP Responders are expected to utilize codes and descriptive text in the `.diagnostics.issue.details` element that meet their existing conventions and/or jurisdictional requirements. One iteration of this element **SHOULD** contain a code from the [PDMP Response Status Codes](ValueSet-pdmp-response-status.html) value set.

<p></p>
<p></p>

_Below are expectations for returning processing information in common PDMP scenarios:_

<p></p>

#### Successful processing that does not locate PDMP history for the requested patient

When a PDMP Responder system successfully completes processing of a PDMP request but has no PDMP history to return (e.g., if the requested patient is not found) it  **SHALL** respond by returning an OperationOutcome resource within the `outcome` operation parameter that describes the reason that no history was returned, as show in [this example](Parameters-pdmp-history-output-parameters-3-patient-not-found.html). 

In this scenario, one iteration of `issue.details.code` **SHOULD** be populated with the `no-data` code from the [response status value set](ValueSet-pdmp-response-status.html)

A `pdmp-history-link` **MAY** also be populated in this scenario, referencing a human-readable report that states that the patient was not found.

<p></p>

#### Successful acceptance of a pre-stage-only request

The PDMP Requester populates the `pre-stage-only` input parameter with `true` to request that the PDMP Responder gather information for the submitted patient and stage it for retrieval via a subsequent `pdmp-history` call. The PDMP Responder returns an operation response with the `outcome` parameter populated to indicate that the request was accepted, as show in [this example](Parameters-pdmp-history-output-parameters-5-pre-stage-response.html).

In this scenario, one iteration of `issue.details.code` **SHOULD** be populated with the `pre-stage-accepted` code from the [response status value set](ValueSet-pdmp-response-status.html)

<p></p>

#### Non-fatal processing exception

If the PDMP Responder encounters a non-fatal exception when executing a request that impacts the content of the response the system **SHALL** include an OperationOutcome within the operation's `outcome` parameter describing the issue and how the response content was impacted, as illustrated in [this example](Parameters-pdmp-history-output-parameters-6-non-fatal-warning.html). 

In this scenario, one iteration of `issue.details.code` **SHOULD** be populated with the `error` code from the [response status value set](ValueSet-pdmp-response-status.html)

<p></p>

#### Error preventing completion of response processing

When a PDMP Responder system encounters an error that prevents it from completing processing of a PDMP request, it  **SHALL** respond by returning an OperationOutcome resource within the `outcome` operation parameter that describes the nature of the failure, as show in [this example](Parameters-pdmp-history-output-parameters-7-fatal-error.html).

In this scenario, one iteration of `issue.details.code` **SHOULD** be populated with the `error` code from the [response status value set](ValueSet-pdmp-response-status.html)

<p></p>
<p></p>