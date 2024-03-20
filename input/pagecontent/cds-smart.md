This section describes approaches for using FHIR's CDS Hooks and SMART App Launch standards to retrieve a patient's information from a PDMP Responder from within the provider's system, as an alternative to the operation-based approached described [here](submission-options.html).


<p></p>

### Overview - Using CDS Hooks and SMART App Launch for PDMP

FHIR's CDS Hooks and SMART App Launch standards enable information exchange and user interaction with external systems to be integrated into a provider system's workflows. 
- [CDS Hooks](https://cds-hooks.hl7.org/2.0/) focuses on triggering interactions with external CDS Servers at appropriate points in a user's process, such as during drug ordering. At a high level...
  - the provider system sends the CDS Server information about the patient and other clinical context at a appropriate step in the provider's workflow (e.g., when ordering a procedure or medication)
  - the CDS Server evaluates the submitted information and returns alerts, suggestions, a link to a SMART app for use by the provider, and/or other decision-support information
  - the provider system presents the information to the user, and enables them to launch an app if received in the response.

<p></p>

- [SMART App Launch](https://www.hl7.org/fhir/smart-app-launch/) enables a provider system to launch an externally-hosted SMART app within a user's workflow, authorizing data exchange between the provider system and the external app and allowing the user to view and interact with the app's interface.
  - The provider system launches the SMART app within its user interface, enabling the user to interact with the app without first navigating to it or completing a separate sign-on
  - The launch can be in the context of a CDS Hooks interaction (above), based on rules maintained by the provider system, or as the result of a manual user action (e.g., clicking a '"launch app" button on the patient view page)
  - The SMART App Launch protocol takes care of authorizing the external app and appropriately limiting its data access rights without any user intervention.

<p></p>

When applied to PDMP...
- **CDS Hooks can alert the provider to check a patient's PDMP history** in situations where it may not be apparent that the patient's use of opioids may be pertinent, for example when the provider is ordering a colonoscopy (as long-term opioid use decreases gastric motility). This can provide value in workflows where checking PDMP history is not mandated.
- **SMART App Launch supports mandated use** of PDMP information during drug ordering or dispensing by rendering the PDMP history or in a standard way within the provider's workflow.

#### Guidance for using CDS Hooks and SMART App Launch for PDMP
This guide defers to the CDS Hooks and SMART App Launch implementation guides for details on their implementation. However, it provides the following direction for using those standards to retrieve PDMP history.

<p></p>

**Use scenarios for CDS Hooks versus SMART App Launch.** 

Implementers:
- **MAY** use CDS Hooks for decision support alerts associated with non-drug orders, to inform the provider of a situation where opioid use might be an issue and checking PDMP is recommended.
- **SHOULD NOT** use CDS Hooks as a mechanism to support a provider requirement to always check PDMP
- **SHALL NOT** return discrete patient PDMP history detail in a CDS Hooks response (instead, the CDS Server **SHOULD** return a url or SMART app `link` card to access the information)
- **SHOULD** use  SMART App Launch alone (not triggered by CDS Hooks) for situations where the EHR, hospital organization, or the state or other jurisdiction has the responsibility of determining when the provider must view a patient's PDMP history.

**CDS Hooks workflow event options**

- The CDS Hooks specification defines event triggers, called "hooks", reflecting workflow points where a request to a CDS Server can be called. In order to provide early notification that PDMP information may be useful to the provider, hooks that occur earlier in the decision-making process, such as...
  - `order-select` which fires at the start of the ordering process 
  - `patient-view` which occurs when the provider first views the patient's chart in an encounter

... are preferable to those that happen after the provider has made determinations.

<p></p>

**Providing context information to a PDMP Responder's CDS Server or SMART App**

The PDMP Responder must receive the same patient and authorized provider information when called using CDS Hooks or SMART App Launch as when the provider system submits a request using the `pdmp-history` operation--to support its authorization and processing requirements.

When submitting a CDS Hooks request or launching an SMART app, the provider system **SHALL** include the [request Parameters resource](StructureDefinition-pdmp-parameters-request.html) to provide needed context:
- as `prefetch` data in a CDS Hooks request
- in the `appContext` launch parameter in a SMART app launch.



<p></p>
<p></p>