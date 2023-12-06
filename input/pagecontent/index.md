### Introduction

Prescription Drug Monitoring Programs (PDMPs) are state-based databases that provide prescribers, pharmacists, and health authorities timely information about controlled substance, and in some states non-controlled substance dispensing, administration and patient behaviors. Use of information stored in PDMPs during care delivery helps avoid drug misuse and diversion and can provide improved patient care and safety.

To reduce opioid misuse and for other purposes, states have implemented policies mandating providers to reference PDMPs to obtain patients' history before prescribing or dispensing certain medications. The Prescription Drug Monitoring Program (PDMP) FHIR Implementation Guide defines a method for providers to access patient PDMP information using the HL7 FHIR standard. 

For general background on state PDMP programs, see the Centers for Disease Control and Prevention [PDMP - What States Need to Know](https://www.cdc.gov/drugoverdose/pdmp/index.html).

### Scope

This guide centers around a single use case, in which a provider (prescriber or pharmacist) or their authorized delegate accesses a Patient’s controlled substance or prescription medication history.

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure: IG Scope</strong></figcaption>
  <p>
  <img src="pdmp-overview-scope.png" style="float:none">  
  </p>
</figure>
</div>

All other interactions between the parties above--such as a prescription being sent from the prescriber to the dispensing pharmacy, or the pharmacy submitting dispense history data to the PDMP--are critical to the overall PDMP process but are not in-scope for this IG. 

This implementation guide is intended be used in the United States. It reflects US pharmacy processes and conventions. 

#### Actors
The following system actors participate in the data exchange flows described in this guide:

- **PDMP Requester:** A system that retrieves patient prescription data from a PDMP on behalf of a prescriber, pharmacist or other authorized healthcare or law enforcement entity. This system can be thought of as the client in a client-server interaction.
- **PDMP Responder:** A state-based PDMP, intermediary or partner system that acts as a source of prescription data by responding to PDMP data requests. This system can be thought of as the server in a client-server interaction.


### Content and Organization

The guide is organized into the following sections:

- [Use Case Overview](use-case.html) describes the PDMP use case, participants and environment variations.
- [Submission Options](submission-options.html) details PDMP request submission and response processing.
- [Security](security.html) provides information for implementers related to security and privacy.
- [Deployment Architecture](deployment.html) provides guidance on system deployment options.
- [Conformance Expectations](conformance.html) defines use of Must Support elements and also describes conventions for situations where information is not available.
- [Applicable US Core Profiles](us-core-profiles.html) defines expectations for the use of US Core profiles in the guide's searches.
- [Profiles, Terminology and Examples](artifacts.html) lists the FHIR profiles and other artifacts defined in this IG.
- [Capability Statements](capability-statements.html) defines sets of guide functionality to be implemented by PDMP Requesters and PDMP Responders.
- [Mappings to Related Standards](mappings.html) describes how FHIR content relates to other standards use in the larger PDMP ecosystem.

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
