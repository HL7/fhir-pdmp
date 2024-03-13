
#### Security Considerations for  Transactions
In each of the exchanges described in this guide, the PDMP Client SHALL provide proof of authorization. PDMP Requester and Responder systems SHOULD implement OAuth 2.0 access management in accordance with the [SMART Backend Services: Authorization Guide](https://hl7.org/fhir/uv/bulkdata/authorization), as the exchanges in this guide do not require user access authorization and may run autonomously.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Transactions secured using SMART on FHIR Backend Services Specification</strong></figcaption>
  <img src="pdmp-security-backend.png" style="float:none">  
</figure>
</div>


#####  PDMP Responder Requirements
* Specifically the PDMP Responder will implement the Authorization Server (documented as EHR Authorization Server in the SMART on FHIR Backend Services specification) that will permit the PDMP Requester to ask for  data about specific patients.  
* The PDMP Responder's Authorization Server will register each PDMP Requester and provide the capability to register its public key with the Authorization Server. 
* The PDMP Responder is expected to allow registration of a PDMP Requester for each individual Provider or a Provider Organization as required by policies.


#####  PDMP Requester Requirements
* The PDMP Requester will implement the requirements corresponding to the App actor in the SMART on FHIR Backend Services specification.
* The PDMP Requester is expected to run in a trusted environment and hence be capable of protecting the Private Key.


#### Security Considerations for SMART on FHIR App

For deployments using a SMART on FHIR App which plays the role of a PDMP Requester, the app will be launched from the EHR and secured using the [SMART App Launch Framework](http://hl7.org/fhir/smart-app-launch/). The user authorizing the app in this case would be the provider who has access to data about his/her patients.

#### Other Security Considerations
In addition, implementers are expected to...
- follow core [FHIR security principles](https://www.hl7.org/fhir/security.html).
 
- protect patient privacy as described in [FHIR Security and Privacy Considerations](https://www.hl7.org/fhir/secpriv-module.html).

<p></p>

 

<br>



