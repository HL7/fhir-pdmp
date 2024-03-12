### Abstract Use Case
This guide centers around a single use case, in which a `PDMP Requestor` (prescriber or pharmacist) accesses a Patient’s medication history from a `PDMP Responder` (a state PDMP or related system(s))

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 1: IG Scope</strong></figcaption>
  <p>
  <img src="pdmp-overview-scope.png" style="float:none">  
  </p>
</figure>
</div>

All other interactions between the parties above--such as a prescription being sent from the prescriber to the dispensing pharmacy, or the pharmacy submitting dispensations to the PDMP--are critical to the overall PDMP process but are not in-scope for this IG (see [Scope](index.md#scope)). 

<p></p>

### Use Case 1

Sam August comes to the Highview Clinic complaining about right hand and wrist pain after he fell from a ladder.  He is seen by Dr Adam Amster.  After examining Mr August, Dr Amster's assessment is a sprained wrist and a broken right ring finger.  Mr Amster is provided a wrist brace and his affected finger is immobilized with a splint.  Dr Amster also determines that a pain medication is appropriate, and 
1. enters a prescription for Acetaminophen with Codeine 325 mg / 30 mg into the Highview Clinic EHR.  
1. The EHR workflow checks determine a PDMP review is needed and 
1. presents Dr Amster with a prompt to request Mr August's PDMP history.
1. Dr Amster requests the PDMP History
1. The EHR creates a `pdmp-bundle-request` and 
1. sends it to the `State PDMP (PDMP Responder)`.
1. The PDMP processes the request and 
1. responds with a `pdmp-bundle-response` sent to the EHR.  
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

