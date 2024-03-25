
#### Security Considerations for Operations and Messaging
In each of the exchanges described in this guide, the PDMP Requester **SHALL** provide proof of authorization. PDMP Requester and PDMP Responder systems **SHOULD** implement OAuth 2.0 access management in accordance with the [SMART Backend Services: Authorization Guide](https://hl7.org/fhir/uv/bulkdata/authorization), as the exchanges in this guide do not require user access authorization and may run autonomously.
<!--
<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Transactions secured using SMART on FHIR Backend Services Specification</strong></figcaption>
  <img src="pdmp-security-backend.png" style="float:none">  
</figure>
</div>

<p></p>

#####  PDMP Responder Requirements
* Specifically the PDMP Responder will implement the Authorization Server (documented as EHR Authorization Server in the SMART on FHIR Backend Services specification) that will permit the PDMP Requester to ask for  data about specific patients.  
* The PDMP Responder's Authorization Server will register each PDMP Requester and provide the capability to register its public key with the Authorization Server. 
* The PDMP Responder is expected to allow registration of a PDMP Requester for each individual Provider or a Provider Organization as required by policies.

<p></p>

#####  PDMP Requester Requirements
* The PDMP Requester will implement the requirements corresponding to the App actor in the SMART on FHIR Backend Services specification.
* The PDMP Requester is expected to run in a trusted environment and hence be capable of protecting the Private Key.

-->

<p></p>

#### Security Considerations for CDS Hooks and SMART on FHIR Apps

Provider Systems and REMS Administrators **SHALL** follow security guidance defined in...
- the CDS Hooks [Security and Safety](https://cds-hooks.hl7.org/2.0/#security-and-safety) section
- the [SMART App Launch  Implementation Guide](https://hl7.org/fhir/smart-app-launch).

<p></p>

#### Other Security Considerations
In addition, implementers are expected to...
- follow core [FHIR security principles](https://www.hl7.org/fhir/security.html).
 
- protect patient privacy as described in [FHIR Security and Privacy Considerations](https://www.hl7.org/fhir/secpriv-module.html).

<p></p>
<p></p>
