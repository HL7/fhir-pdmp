### Introduction

Prescription Drug Monitoring Programs (PDMPs) are state-based databases that provide prescribers and pharmacists with timely information about controlled substance, and in some states non-controlled substance, dispensing, administration and patient behaviors. Use of information stored in PDMPs during care delivery helps avoid drug misuse and diversion and can provide improved patient care and safety.

To reduce opioid misuse, reduce drug diversion, and for other purposes, states have implemented policies mandating providers to reference PDMPs to obtain a patient's PDMP history before prescribing or dispensing certain medications. The Prescription Drug Monitoring Program (PDMP) FHIR Implementation Guide defines a method for providers to request and retrieve patient PDMP information using the HL7 FHIR standard. 

For general background on state PDMP programs, see the Centers for Disease Control and Prevention [PDMP - What States Need to Know](https://www.cdc.gov/drugoverdose/pdmp/index.html).
 
#### PDMP Ecosystem

The following figure, provided by Prescription Drug Monitoring Program Training and Technical Assistance Center ([PDMP TTAC](https://www.pdmpassist.org)) shows an overview of the PDMP reporting ecosystem.  

In this figure, 
* a `user` can interact with a `State PDMP System` directly (i.e., a web portal) or through a `Health care or pharmacy entity`
* `Health care or pharmacy entity` can interact with a `State PDMP System` directly or via `RxCheck Hub`, `PMPi Hub` or `Integration Facilitator`
* `State PDMP System`s exchange information with each other through `RxCheck Hub` or `PMPi Hub`

Outside of a `user` accessing a `State PDMP System` via a web portal, the interactions in Figure 1 can support discrete data exchange. 

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 1: An overview of the PDMP ecosystem</strong></figcaption>
  <p>
  <img src="pdmp-ecosystem-small.png" style="float:none">  
  </p>
</figure>
</div>
<p></p>

### Scope

For this Implementation Guide, we limit and abstract the ecosystem in Figure 1 to focus on `PDMP request` and `PDMP response` messages exchanged between the `PDMP Requester` and the `PDMP Responder` as depicted in Figure 2.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 2:  Abstract Model and Actors</strong></figcaption>
  <p>
  <img src="pdmp-overview-scope.png" style="float:none">  
  </p>
</figure>
</div>
<p></p>

To support regulatory requirements in various states, `PDMP response` supports both the PDMP history as discrete data and a URL pointing to the PDMP history rendered (fully-formatted) to regulatory requirements.

This guide provides both RESTful operation and messaging submission methods to match implementers' particular environments as described [here](submission-options.html).

This Implementation Guide is intended to be used in the United States.  It reflects US pharmacy processes and conventions.

### Out of Scope
**Other interactions** between PDMP ecosystem parties, including parties not depicted in Figure 1, are ***out of scope*** for this Implementation Guide.  These exchanges include, but are not limited to:
- data exchange between PDMPs
- prescription dispensations reported by the pharmacy to the PDMP
- electronic prescriptions sent from the prescriber to the pharmacy


**Patient Matching:** This Implementation Guide does not specify patient matching requirements.  States may require requesters to include certain patient information to enable or facilitate patient matching.  This guide supports that patient information, however, the specific patient matching criteria requirements for each PDMP are ***out of scope***.


### Actors and Definitions

- **PDMP Requester:** A system that sends `PDMP request`s to `PDMP Responder`s and receives `PDMP response`s in return. The system may include both a local system (e.g., EHR, Pharmacy System) and associated intermediaries (e.g., eRx switch). This system can be thought of as the client in a client-server interaction.  

- **PDMP Responder:** A system that receives `PDMP request`s from `PDMP Requester`s and responds with `PDMP response`s. The system may include, in addition to the state PDMP, other partner systems (e.g., hubs).  This system can be thought of as the server in a client-server interaction.

- **PDMP request:** A message, sent by a `PDMP requester` on behalf of a user, which contains all necessary and required information such that a `PDMP Responder` can, if appropriate, respond with a `PDMP response`.  This includes, but is not limited to, user identification and authorization and patient identification.

- **PDMP response:** A message, sent by a `PDMP Responder` that particular `PDMP Requester` that submitted a specific  `PDMP request`.  The message may include any combination of: the PDMP history in discrete data, a URL to a formatted PDMP history report, additional alerts and message, error messages, and other relevant information.

- **PDMP history:** The content of a `PDMP response` including pertinent patient, pharmacy, prescriber, and dispensation records. The `PDMP Responder` may also include alerts, administration records, and other information as appropriate or as required by policy or regulation. 


### Content and Organization

The guide is organized into the following sections:

- [Use Case Overview](use-case.html) describes the PDMP use case, participants and environment variations.
- [Operation Submission Options](submission-options.html) details PDMP request submission and response processing using a FHIR operation.
- [CDS Hooks and SMART App Options](cds-smart.html) describes use of these FHIR mechanisms to integrate retrieval and view of PDMP information into the provider's workflow.
- [Security](security.html) provides information for implementers related to security and privacy.
- [Conformance Expectations](conformance.html) defines use of Must Support elements and also describes conventions for situations where information is not available.
- [Mappings to Related Standards](mappings.html) describes how FHIR content relates to other standards use in the larger PDMP ecosystem.
- [Applicable US Core Profiles](us-core-profiles.html) defines expectations for the use of US Core profiles in the guide's searches.
- [Profiles, Terminology and Examples](artifacts.html) lists the FHIR profiles and other artifacts defined in this IG.

### FHIR Basics 

For those new to FHIR, the material below describes basic FHIR principles and gives guidance for reading FHIR specifications.

- [FHIR overview](http://hl7.org/fhir/R4/overview.html)
- [Developer’s introduction](http://hl7.org/fhir/R4/overview-dev.html) (or [Clinical introduction](http://hl7.org/fhir/R4/overview-clinical.html))
- [FHIR data types](http://hl7.org/fhir/R4/datatypes.html)
- [Using codes](http://hl7.org/fhir/R4/terminologies.html)
- [References between resources](http://hl7.org/fhir/R4/references.html)
- [How to read resource & profile definitions](http://hl7.org/fhir/R4/formats.html)
- [Base resource](http://hl7.org/fhir/R4/resource.html)

### Sponsoring HL7 Workgroup  
[Pharmacy](http://www.hl7.org/Special/committees/medication/index.cfm)

### Authors

<table class="grid">
    <tbody>
	  <tr>
		<td colspan="2">HL7 Pharmacy Workgroup</td>
  	  </tr>
	  <tr>
		<td>Frank McKinney</td>
		<td><a href="mailto:frank.mckinney@pocp.com">frank.mckinney@pocp.com</a></td>
	  </tr>
	  <tr>
		<td>Scott Robertson</td>
		<td><a href="mailto:scott.robertson@pocp.com">scott.robertson@pocp.com</a></td>
	  </tr>
	  <tr>
		<td colspan="2">Brett Marquard, Nagesh Bashyam, Melva Peters and Eric Haas authored the predecessor to this guide, the US Meds FHIR IG. Certain content from that work has been updated and included here.</td>
	  </tr>
	</tbody>
  </table>


### Dependencies
{% include dependency-table.xhtml %}

### Cross Version Analysis
{% include cross-version-analysis.xhtml %}

### Global Profiles
{% include globals-table.xhtml %}

### IP Statements
{% include ip-statements.xhtml %}
