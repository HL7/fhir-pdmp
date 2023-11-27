### PDMP Ecosystem

The following figure, provided by Prescription Drug Monitoring Program Training and Technical Assistance Center ([PDMP TTAC](https://www.pdmpassist.org)) shows a overview of the PDMP reporting ecosystem.  Simplistically, a `user` requests a PDMP report from a given State PDMP System, which responds with the report.  In reality, users work within their local system (e.g., EHR, Pharmacy System, eRx application), and possibly an associated intermediary (e.g., eRx switch) in creating a PDMP Request or receiving a PDMP Report.  Likewise, State PDMP systems are the ultimate source for the PDMP Report, but may work with various intermediaries (e.g., Integration Facilitator, PMP Hub) in receiving a PDMP Request or sending a PDMP Report.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 1: An overview of the PDMP ecosystem</strong></figcaption>
  <p>
  <img src="pdmp-ecosystem-small.png" style="float:none">  
  </p>
</figure>
</div>

For this Implementaion Guide, we abstract the ecosystem in Figure 1 by focusing on the PDMP Request and PDMP Report messages being exchanges by the PDMP Requester and teh PDMP Responder

### Abstract Model, Actors and Definitions

This section defines the abstract model which is used to identify the specific actors and interactions that are in-scope for the project. The abstract model is as shown in Figure 2 below which consists of two actors: the PDMP Requester and the PDMP Responder.

- **PDMP Requester:** A system (may include both a local system (e.g., EHR, Pharmacy System) and associated intermediaries (e.g., eRx switch)) that retrieves patient prescription data from a PDMP on behalf of a prescriber or pharmacist. This system can be thought of as the client in a client-server interaction.  

- **PDMP Responder:** A state-based PDMP, including any intermediary or partner systems, that acts as a source of prescription data by responding to PDMP data requests. This system can be thought of as the server in a client-server interaction.

**Note**: PDMP Responders may act as intermediaries, providing additional services such as the ability to query multiple state's systems on behalf of a requesting provider. The method for accessing PDMP prescription data is the same whether a PDMP Responder is an intermediary or an actual state system.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 2:  Abstract Model and Actors</strong></figcaption>
  <p>
  <img src="abstract-model.png" style="float:none">  
  </p>
</figure>
</div>
<p></p>

### Use Case
This guide centers around a single use case, in which a provider (prescriber or pharmacist) accesses a Patient’s controlled substance history

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 3: IG Scope</strong></figcaption>
  <p>
  <img src="pdmp-overview-scope.png" style="float:none">  
  </p>
</figure>
</div>

All other interactions between the parties above--such as a prescription being sent from the prescriber to the dispensing pharmacy, or the pharmacy submitting dispense history data to the PDMP--are critical to the overall PDMP process but are not in-scope for this IG. 



### Current Data Standards Supporting the PDMP Ecosystem

_to be reviewed/revised_

In the current ecosystem, provider and PDMP systems use a combination of NCPDP, ASAP and PMIX/NIEM standards to transmit prescriptions, supply dispense data to PDMPs and access data from other state systems, as illustrated below:

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Standards supporting the PDMP ecosystem</strong></figcaption>
  <p>
  <img src="pdmp-overview-standards.png" style="float:none">  
  </p>
</figure>
</div>

As shown in the figure above, no national standards have been established for the request of dispense data from PDMPs by provider systems. Data transmission methods for that request flow vary state-by-state.

Providers may also currently use web portals to access PDMP data, as shown in the figure below. 

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Practitioners using WebPortals to access  data</strong></figcaption>
  <p>
  <img src="pdmp-data-access-2.png" style="float:none">  
  </p>
</figure>
</div>

In this case, the provider has to interact with a separate web portal not integrated with the EHR to access the  data. These web portals typically have custom integrations with the associated state PDMP systems. 
<p></p>

### Provider Data Access Using FHIR

_to be reviewed/revised_

As discussed above, the current mechanisms to access data vary between the usage of multiple data transmission formats or proprietary mechanisms such as web portals. The  ecossystem can benefit from the use of FHIR standards for accessing  data in the following ways:

* Ability to easily integrate PDMP web application access into EHR work flows using SMART on FHIR Apps
* Ability to integrate discrete PDMP data results using FHIR messaging
* Ability to enhance security mechanisms outlined by FHIR and SMART on FHIR between the  actors
* Ability to leverage the  FHIR APIs to build decision support services using CDS Hooks in the EHR work flows

Figure 5a, 5b and 5c below shows the different options for using FHIR APIs to access  data in the EHR work flows.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 5a: Options to leverage FHIR APIs with intermediaries and PMIX/NIEM to access  data</strong></figcaption>
  <p>
  <img src="pdmp-data-access-fhir-1.png" style="float:none">  
  </p>
</figure>
</div>

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 5b: Options to leverage only FHIR APIs with intermediaries to access  data</strong></figcaption>
  <p>
  <img src="pdmp-data-access-fhir-2.png" style="float:none">  
  </p>
</figure>
</div>

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 5c: Options to leverage only FHIR APIs to access  data without intermediaries</strong></figcaption>
  <p>
  <img src="pdmp-data-access-fhir-3.png" style="float:none">  
  </p>
</figure>
</div>


#### FHIR resources used

_to be reviewed/revised_

In order to use FHIR to access PDMP data, the following FHIR resources are used:

* MedicationDispense: Used to communicate dispense information.
* MedicationAdministration: Used to communicate administration information.
* Organization: Used to communicate information about the requester, dispenser and administering party organization.
* Practitioner and PractitionerRole: Used to communicate information about the requesting provider and the prescriber of a dispensed or administered product.
* Patient: Used to communicate information about the patient.
* Message Header: Used to communicate information supporting the request and response interactions.
* Parameters: Used to enumerate input information in the PDMP request message.


### Data integration using FHIR messaging

_to be reviewed/revised_

The FHIR standard provides a messaging capability that supports important aspects of PDMP data retrieval, including:

- Submission of requester information including authorized provider and delegate details and facility information
- Support for a "pre-fetch" request processing option which instructs the PDMP Responder to tee up results to be returned in response to a subsequent request from the PDMP Requester

The [Message Processing](message-processing.html) page details PDMP message submission and response processing.


### Integrating a PDMP web interface into the requester's system using SMART App Launch

_to be added_


### Patient Matching Considerations

_to be reviewed/revised_

The PDMP FHIR IG does not add any patient matching requirements to the  actors, but relies on existing practices used for patient matching based on the first name, last name and date of birth provided through the request. Some states may require requesters to include additional parameters to facilitate more accurate patient matching results, however these variations are out of scope for this IG.


<br>

