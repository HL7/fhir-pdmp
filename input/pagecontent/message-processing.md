The request to the PDMP Responder for patient information, and the response back to the requester are accomplished using FHIR Messaging. This page describes the overall workflow, message content and related considerations.

### Message overview
<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: High-level PDMP Message Flow</strong></figcaption>
  <p>
  <img src="message-flow.png" style="float:none">  
  </p>
</figure>
</div>

<p></p>

### Request message content
_additional narrative to be added_

The PDMP Request message includes the information needed to retrieve a single individual's information--including medication dispenses, administrations and related information--from a PDMP Responder. 

Specification details and examples are at [PDMP Bundle - Request Message](StructureDefinition-pdmp-bundle-request.html) 

<p></p>

### Response message content
 _additional narrative to be added_

The PDMP Response message includes the information needed to retrieve a single individual's information--including medication dispenses, administrations and related information--from a PDMP Responder. 

Specification details and examples are at [PDMP Bundle - Response Message](StructureDefinition-pdmp-bundle-response.html) 

<p></p>

### Message submission
PDMP messages are exchanged using standard FHIR messaging features. 
- PDMP-specific guidance is outlined below
- See [Messaging Using FHIR Resources](https://www.hl7.org/fhir/messaging.html) for additional background from the FHIR specification.

<p></p>

#### Operation: $process-message
PDMP messages are POSTed to their recipients using the $process-message operation...
* URL: [base]/$process-message

Details from the base FHIR specification are [here](https://www.hl7.org/fhir/operation-messageheader-process-message.html).

<p></p>

#### $process-message Parameters
The $process-message operation SHALL contain a single `content` parameter consisting of a FHIR message (a Bundle containing a MessageHeader resource).  

**Notes:** 

- The "content" parameter of the $process-message is always the body of the HTTP message.

- The `async` and `response-url` Process Message parameters may be used when supported by the PDMP Responder.

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


<br>