### Abstract Use Case
This guide centers around a single use case, in which a `PDMP Requestor` (prescriber or pharmacist) accesses a Patient’s PDMP history from a `PDMP Responder` (a state PDMP or related system(s))

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 1: IG Scope</strong></figcaption>
  <p>
  <img src="pdmp-overview-scope.png" style="float:none">  
  </p>
</figure>
</div>

All other interactions between the parties above--such as a prescription being sent from the prescriber to the dispensing pharmacy, or the pharmacy submitting dispensations to the PDMP--are critical to the overall PDMP process but are not in-scope for this IG (see [Scope](index.html#scope)). 

<p></p>


### Use Case 1 - *A simple PDMP request/response*


Sam August comes to the Highview Clinic complaining about right hand and wrist pain after he fell from a ladder.  He is seen by Dr Adam Amster.  After examining Mr August, Dr Amster's assessment is a sprained wrist and a broken right ring finger.  Mr Amster is provided a wrist brace and his affected finger is immobilized with a splint.  Dr Amster determines that a pain medication is appropriate, and 
1. enters a prescription for Acetaminophen with Codeine 325 mg / 30 mg into the Highview Clinic EHR.  
1. The EHR workflow checks determine a PDMP review is needed and 
1. presents Dr Amster with a prompt to request Mr August's PDMP history.
1. Dr Amster requests the PDMP History
1. The EHR creates a `pdmp-bundle-request` and 
1. sends it to the `State PDMP (PDMP Responder)`.
1. The PDMP processes the request and 
1. responds with a `pdmp-bundle-response` to the EHR.  
1. The EHR presents the PDMP response, which
1. Dr Amster reviews and acknowledges,
1. subsequently finalizing the prescription,
1. which the EHR sends to the pharmacy as an `NCPDP SCRIPT NewRx`

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 2: Use Case 1 sequence diagram</strong></figcaption>
  <p>
  <img src="use-case-1-sequence.png" style="float:none">  
  </p>
</figure>
</div>

<p></p>


### Use Case 2 - *Illustrating a pre-stage PDMP request/response*


Sam August presents at the Highview Medical Center Emergency Department complaining of severe pain in his right hand, wrist, and forearm after falling off of a ladder.  
1. Mr August is admitted to the ED's EHR and triaged into the care service
1. Per ED policy, the ED EHR submits a pre-stage PDMP request
    1. The EHR creates a `pdmp-bundle-request` with the input parameter `pre-stage-only`= `true` and 
    1. sends it to the `State PDMP (PDMP Responder)`
1. The PDMP processes the request and 
1. responds with a `pdmp-bundle-response` with the retrieval key in the output parameter `pre-stage-retrieval-key` to the EHR.

Mr August is subsequently seen by Dr Amster.  Dr Amster's assessment is one or more fractures in the hand, wrist, and forearm.  Subsequent radiology images confirm fractures of the lower right ulna and multiple metacarpal and phalanges.  Dr Amster orders casting of the right forearm and hand, and  

5. enters a prescription for Acetaminophen with Codeine 325 mg / 30 mg into the ED's EHR.  
1. The EHR workflow checks determine a PDMP review is needed and 
1. presents Dr Amster with a prompt to request Mr August's PDMP history.
1. Dr Amster requests the PDMP History
1. The EHR creates a `pdmp-bundle-request` and includes the `pre-stage-retrieval-key`, previously received, as an input parameter and
1. sends it to the `State PDMP (PDMP Responder)`.
1. The PDMP uses the `pre-stage-retrieval-key` to retrieve the previously generated PDMP history and 
1. responds with a `pdmp-bundle-response` to the EHR.  
1. The EHR presents the PDMP response, which
1. Dr Amster reviews and acknowledges,
1. subsequently finalizing the prescription,
1. which the EHR sends to the pharmacy as an `NCPDP SCRIPT NewRx`


<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 3: Use Case 2 sequence diagram</strong></figcaption>
  <p>
  <img src="use-case-2-sequence.png" style="float:none">  
  </p>
</figure>
</div>

<p></p>

### Use Case 3 - *Illustrating a PDMP response including a URL*

The `pdmp-bundle-response` can include the PDMP history as discrete FHIR-formatted data, a URL link to a fully formatted PDMP history report, or both the discrete data and the link.  The data can support additional Clinical Decision Support services in the EHR but does not necessarily support any visual formatting the PDMP may be required to follow (e.g., regulatory presentation requirements).

The use case sequence is the same as above, except for Use Case 1 step 9 and Use Case 2 step 13.  Instead of presenting the discrete data received in the `pdmp-bundle-response`, the EHR redirects the Dr Amster via the URL link to the formatted PDMP History on the `State PDMP (PDMP Responder)`'s web server.  This alternate flow is shown in the follow diagram.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 4: Use Case 3 sequence diagram</strong></figcaption>
  <p>
  <img src="use-case-3-sequence.png" style="float:none">  
  </p>
</figure>
</div>

<p></p>

