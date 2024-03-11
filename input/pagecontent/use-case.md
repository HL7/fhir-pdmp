### Abstract Use Case
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

### Provider Data Access Using FHIR

As discussed above, the current mechanisms to access data vary between the usage of multiple data transmission formats or proprietary mechanisms such as web portals. The  ecosystem can benefit from the use of FHIR standards for accessing  data in the following ways:

* Ability to integrate discrete PDMP data results using the `get-pdmdp-history` operation directly or submitting the request using FHIR messaging
* Ability to integrate PDMP web application access into EHR work flows using SMART on FHIR Apps
* Ability to initiate a PDMP history request as a decision support step in an appropriate EHR workflow using CDS Hooks
* Ability to enhance security mechanisms outlined by FHIR and SMART on FHIR between the  actors

<p></p>

The figures below shows the different options for using FHIR APIs to access data in the EHR work flows.

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


