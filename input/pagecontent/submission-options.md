### PDMP `pdmp-history` operation

The PDMP request and response are accomplished using a FHIR Operation ([pdmp-history](OperationDefinition-pdmp-history.html)) which is invoked by POSTing a FHIR Parameters resource containing patient and requesting provider details to the PDMP Responder's `Patient/$pdmp-history` endpoint. In response, the PDMP Responder gathers PDMP history information and returns it within another Parameters resource.

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

See the [pdmp-history OperationDefinition](OperationDefinition-pdmp-history.html) for full operation details.

The operation can be called in two ways:
- directly using a RESTful POST to the PDMP Responder's `[base]/Patient/$pdmp-history` endpoint
- using FHIR messaging, by submitting the operation's request parameters within a bundle that also includes a MessageHeader that references the `pdmp-history` operation definition

See [the messaging section below](submission-options.html#message-submission) for details on calling the `pdmp-history` operation using FHIR messaging.

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

The PDMP Request message includes a MessageHeader and a Parameters resource containing the information needed to retrieve a single individual's information--including medication dispenses, administrations and related information--from a PDMP Responder. 

Specification details and examples are at [PDMP Bundle - Request Message](StructureDefinition-pdmp-bundle-request-message.html) 

Note that the MessageHeader.event of the request references the same [pdmp-history operation](OperationDefinition-pdmp-history.html) that can be invoked directly using a RESTful POST to in non-messaging environments.
<p></p>

#### Response message content

The PDMP Response message contains a MessageHeader and a Parameters resource containing a Bundle holding:
- medication dispenses, administrations and related details if the PDMP Responder is able to locate information for the requested patient
- an OperationOutcome providing processing information including any errors that occurred or reasons for not returning patient information (e.g., no PDMP information found for the requested patient).

In addition, the Parameters resource may include a `pre-stage-retrieval-key` string value if the associated request included a `pre-stage-only` parameter value of `true`.
- When a `pre-stage-retrieval-key` is returned, the requester is expected to include the key when submitting a subsequent request to retrieve the pre-staged result.

<p></p>

Details and examples are at [PDMP Bundle - Response Message](StructureDefinition-pdmp-bundle-response-message.html) 

<p></p>

#### Message submission
Invoking the `pdmp-history` operation via FHIR messaging is accomplished following the guidance provided in the [Invoking Operations via Messages](http://hl7.org/fhir/messaging.html#operations) section of the FHIR specification.

**MessageHeader population**

The MessageHeader.event of the request message references the [`pdmp-history` operation](OperationDefinition-pdmp-history.html). Specifically:
- MessageHeader.eventCoding.system = `"urn:ietf:rfc:3986"`
- MessageHeader.eventCoding.code = `"http://hl7.org/fhir/us/pdmp/OperationDefinition/pdmp-history"`

**Submission endpoint and parameters**

The request message is POSTed to the PDMP Responder using the standard FHIR $process-message operation...
  - URL: `[base]/$process-message`
  - Details from the base FHIR specification are [here](https://www.hl7.org/fhir/operation-messageheader-process-message.html).

Per the standard, the $process-message operation SHALL contain a single `content` parameter consisting of a FHIR message (a Bundle containing a MessageHeader resource).  

The `async` and `response-url` Process Message parameters may be used when supported by the PDMP Responder.

PDMP messages are exchanged using standard FHIR messaging features. 
- See [Messaging Using FHIR Resources](https://www.hl7.org/fhir/messaging.html) for messaging conventions contained in the FHIR specification.

<p></p>


### Handling for processing exceptions

The section below provides guidance for PDMP Responders for responding in situations where the request cannot be processed in part or in whole.

<p></p>

#### Non-fatal exceptions

If the PDMP Responder encounters a non-fatal exception when executing a request, the system SHALL include an OperationOutcome entry within the results Bundle describing the issue. The `search.mode` of this entry SHALL  be set to the value, `outcome`.

<pre>
    {
      "fullUrl" : "http://example.org/pdmp-a/Bundle/987654",
      "resource" : {
        "resourceType" : "Bundle",
        "id" : "987654",

...

        "entry" : [
          {
            "fullUrl" : "http://example.org/pdmp-a/OperationOutcome/100",
            "resource" : {
              "resourceType" : "OperationOutcome",
              "id" : "100",
              "issue" : [
                {
                  "severity" : "error",
                  "code" : "processing",
                  "diagnostics" : "The Wisconsin PDMP did not respond within the timeout period. Returning only records from the Minnesota PDMP"
                }
              ]
            },
            "search" : {
              "mode" : "outcome"
            }
          }
        ]
      }
    }
</pre>

TO BE ADDED: [Full PDMP Response example containing an exception]()

<p></p>

#### Error preventing completion of response processing

When a PDMP Responder system encounters an error that prevents it from completing processing of a PDMP request, it  SHALL respond by returning an OperationOutcome resource within the results Bundle that describes the nature of the failure.

The OperationOutcome:

* SHALL contain a definition of severity in the `OperationOutcome.issue.severity` field. 
* SHALL contain a definition of the type of error in the `OperationOutcome.issue.code` element.
* SHOULD provide additional diagnostic details of the error in `OperationOutcome.diagnostics` property
* SHOULD contain details of the error in the `OperationOutcome.issue.details.coding.display` field.
* SHOULD contain an `OperationOutcome.issue.details.coding.code` value.

TO BE ADDED: [Example]()

<p></p>

### Security considerations for messaging

See the [Security](security.html) section for security and privacy guidance.

### Integrating a PDMP web interface into the requester's system using SMART App Launch

_to be added_



The operation requesting patient PDMP history may also be invoked using FHIR messaging in environments where... 

- the PDMP Responder only accepts requests via an intermediary
- or the participants would otherwise benefit from messaging features such as inclusion of a MessageHeader to convey information for routing, logging or other purposes. 

This page overviews the messaging workflow, message content and related considerations. See [the FHIR standard's messaging page](http://hl7.org/fhir/messaging.html) for additional details on FHIR messaging conventions.


<br>