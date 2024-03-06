### PDMP Ecosystem

The following figure, provided by Prescription Drug Monitoring Program Training and Technical Assistance Center ([PDMP TTAC](https://www.pdmpassist.org)) shows a overview of the PDMP reporting ecosystem.  Simplistically, a `user` requests a PDMP report from a given State PDMP System, which responds with the report.  In reality, users work within their local system (e.g., EHR, Pharmacy System, eRx application), and possibly an associated intermediary (e.g., eRx switch) in creating a PDMP Request or receiving a PDMP Report.  Likewise, State PDMP systems are the ultimate source for the PDMP Report, but may work with various intermediaries (e.g., Integration Facilitator, PMP Hub) in receiving a PDMP Request or sending a PDMP Report.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: An overview of the PDMP ecosystem</strong></figcaption>
  <p>
  <img src="pdmp-ecosystem-small.png" style="float:none">  
  </p>
</figure>
</div>

For this Implementaion Guide, we abstract the ecosystem in this figure by focusing on the PDMP Request and PDMP Report messages being exchanges by the PDMP Requester and the PDMP Responder

<p></p>

### Actors and Definitions

The system actors that participate in this guide's interactions are the PDMP Requester and the PDMP Responder as depicted in the figure below.

- **PDMP Requester:** A system (may include both a local system (e.g., EHR, Pharmacy System) and associated intermediaries (e.g., eRx switch)) that retrieves patient prescription data from a PDMP on behalf of a prescriber or pharmacist. This system can be thought of as the client in a client-server interaction.  

- **PDMP Responder:** A state-based PDMP or partner system that acts as a source of PDMP data by responding to PDMP data requests. This system can be thought of as the server in a client-server interaction.

**Note**: Intermediaries may participate in the transmission of a PDMP request between the system of the requesting provider and the PDMP Responder that processes the request and returns a response. This guide provides both RESTful operation and messaging submission methods to match implementers' particular environments as described [here](submission-options.html).

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure:  Abstract Model and Actors</strong></figcaption>
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
<figcaption class="figure-caption"><strong>Figure: IG Scope</strong></figcaption>
  <p>
  <img src="pdmp-overview-scope.png" style="float:none">  
  </p>
</figure>
</div>

All other interactions between the parties above--such as a prescription being sent from the prescriber to the dispensing pharmacy, or the pharmacy submitting dispense history data to the PDMP--are critical to the overall PDMP process but are not in-scope for this IG. 

<p></p>

### Other Data Standards Supporting the PDMP Ecosystem

In the current ecosystem, provider and PDMP systems use a combination of NCPDP, ASAP and PMIX/NIEM standards to exchange prescription, dispensation, and administration data supporting PDMP processes, as illustrated below:

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

As discussed above, the current mechanisms to access data vary between the usage of multiple data transmission formats or proprietary mechanisms such as web portals. The  ecosystem can benefit from the use of FHIR standards for accessing  data in the following ways:

* Ability to integrate discrete PDMP data results using the `get-pdmdp-history` operation directly or submitting the request using FHIR messaging
* Ability to integrate PDMP web application access into EHR work flows using SMART on FHIR Apps
* Ability to initiate a PDMP history request as a decision support step in an appropriate EHR workflow using CDS Hooks
* Ability to enhance security mechanisms outlined by FHIR and SMART on FHIR between the  actors

<p></p>

The figures below shows the different options for using FHIR APIs to access  data in the EHR work flows.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Options to leverage FHIR APIs with intermediaries and PMIX/NIEM to access  data</strong></figcaption>
  <p>
  <img src="pdmp-data-access-fhir-1.png" style="float:none">  
  </p>
</figure>
</div>

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Options to leverage only FHIR APIs with intermediaries to access  data</strong></figcaption>
  <p>
  <img src="pdmp-data-access-fhir-2.png" style="float:none">  
  </p>
</figure>
</div>

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: Options to leverage only FHIR APIs to access  data without intermediaries</strong></figcaption>
  <p>
  <img src="pdmp-data-access-fhir-3.png" style="float:none">  
  </p>
</figure>
</div>

<p></p>

#### FHIR Resources Used to Convey a Patient's PDMP History

The following FHIR resources are used in the request for a patient's PDMP history and to convey the resulting medication dispense and administration data.

* Alert: Used to communicate clinical alerts or other additional information in the PDMP response.
* MedicationDispense: Used to communicate dispense information.
* MedicationAdministration: Used to communicate administration information.
* Message Header: Used to communicate information supporting the request and response interactions (in the FHIR messaging option only)
* Organization: Used to communicate information about the requester, dispenser and administering party organization.
* Parameters: Used to enumerate input and output information in the `pdmp-history` operation.
* Patient: Used to communicate information about the patient.
* Practitioner and PractitionerRole: Used to communicate information about the requesting provider, the prescriber of a dispensed or administered product, or the provider that administered a medication.

<p></p>

### Patient Matching Considerations

The PDMP FHIR IG does not add any patient matching requirements to the  actors, but relies on existing practices of PDMP Responders used for patient matching based on the first name, last name, date of birth, identifiers or and/or other elements provided through the request. States may require requesters to include certain patient information to facilitate patient matching; however, these requirements are out of scope of this IG.


<br>

