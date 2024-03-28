
#### Security Considerations for Operations and Messaging
In each of the exchanges described in this guide, the PDMP Requester **SHALL** provide proof of authorization. PDMP Requester and PDMP Responder systems **SHOULD** implement OAuth 2.0 access management in accordance with the [SMART Backend Services: Authorization Guide](https://hl7.org/fhir/uv/bulkdata/authorization), as the exchanges in this guide do not require user access authorization and may run autonomously.

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
