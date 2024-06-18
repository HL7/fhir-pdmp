### Handling Missing Data

#### In Must Support Elements

**Unknown Reason.** If the PDMP Responder system does not have data for a *Must Support* data element, and the reason for absence is unknown:

- The PDMP Responder system responding to a query SHALL NOT include the element in the resource. 

- The PDMP Requester system SHALL interpret missing data elements within resource instances as data not present in the PDMP Responder system.

**Known Reason.** In situations where information on a particular data element is missing and the PDMP Responder knows the precise reason for the absence of data: 

- The PDMP Responder system SHALL send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or using the dataAbsentReason extension. *(See next section)*

- The PDMP Requester system SHALL be able to process resource instances containing data elements asserting missing information.

#### In Required Elements

If the source system does not have data for a *required* data element (in other words, where the minimum cardinality is greater than 0), participants must follow the rules below.

**Non-Coded Data Elements**. Use the FHIR [DataAbsentReason Extension](http://hl7.org/fhir/R4/extension-data-absent-reason.html) with the code, unknown, which means *the value is expected to exist but is not known*.

**Coded Data Elements** 

- ***Example, preferred, or extensible* binding strengths**
  
  - If the source systems has text but no coded data, only the text element is used.
  - If there is neither text nor coded data, use the appropriate “unknown” concept code from the value set if available
  - If the value set does not have the appropriate “unknown” concept code, use “unknown” from the  [DataAbsentReason Code System](http://hl7.org/fhir/R4/codesystem-data-absent-reason.html)
  
- ***Required* binding strength** 

    - Use the appropriate “unknown” concept code from the value set, if available. 
    - In cases where the PDMP Responder does not know the correct code, and the value set lacks an appropriate "unknown" code, it SHALL respond to a query for the resource with an OperationOutcome accompanied by a 404 HTTP error code. 
    
    For example, the following status elements do not contain an “unknown” concept code--and so, the element cannot be populated as unknown:
    
    - AllergyIntolerance.clinicalStatus
    - Condition.clinicalStatus
    - DocumentReference.status

<p></p>

