### US Core Profiles Used With This Guide

#### Base profiles for PDMP-specific content

This guide incorporates US Core profiles as the base for the following resource profiles that further specify content exchange between PDMP Requesters and PDMP Responders:

<p></p>

<table class="grid">
    <tbody>
        <tr>
              <td style="font-weight:bold;text-align:center">PDMP Profile</td>
            <td style="font-weight:bold;text-align:center">Base US Core Profile</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-pdmp-patient.html">PDMP Patient</a></td>
            <td><a href="https://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-pdmp-medicationdispense.html">PDMP MedicationDispense</a></td>
            <td><a href="https://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationdispense.html">US Core MedicationDispense</a></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-pdmp-organization-pharmacy.html">PDMP Pharmacy</a></td>
            <td><a href="https://hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html">US Core Organization</a></td>
        </tr>   
    </tbody>
</table>

<p></p>

#### Required profiles for where PDMP-specific content hasn't been defined

Implementers SHALL conform to the following US Core profiles in PDMP interactions as indicated below:

<p></p>

<table class="grid">
    <tbody>
        <tr>
              <td style="font-weight:bold;text-align:center">US Core Profile</td>
            <td style="font-weight:bold;text-align:center">Use in PDMP Interactions</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html">US Core Practitioner</a></td>
            <td>Represents the authorized provider and delegate (if exchanged) requesting an individual's PDMP history. 
            <p></p>
            Also may represent an administering, dispensing or prescribing provider in a PDMP response, if applicable.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/us/core/StructureDefinition-us-core-practitionerrole.html">US Core PractitionerRole</a></td>
            <td>Provides practice information for the authorized provider and delegate</td>
        </tr>
        <tr>
             <td><a href="https://hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html">US Core Organization</a></td>
            <td>Represents the organization of the authorized provider and delegate
            <p></p>
            Also may represent an organization participating in drug administration or dispensing in a PDMP response, if applicable.
            </td>
       </tr>   
        <tr>
             <td><a href="https://hl7.org/fhir/us/core/StructureDefinition-us-core-relatedperson.html">US Core RelatedPerson</a></td>
            <td>Represents the owner of an animal, if that animal is submitted as the patient in a PDMP request</td>
       </tr>   
        <tr>
             <td><a href="https://hl7.org/fhir/us/core/StructureDefinition-us-core-medication.html">US Core Medication</a></td>
            <td>May be used to represent a dispensed or administered drug in a PDMP response as an alternative to the coded <code>medicationCodeableConcept</code> representation in a MedicationDispense or MedicationAdministration, for example when communicating compounded drugs.</td>
       </tr>   
    </tbody>
</table>

<p></p>

#### Additional information exchanged in PDMP interactions

This guide does not prohibit PDMP participants from exchanging additional information beyond what it details, for example to meet jurisdictional requirements or to support additional use cases. 

When other resources not profiled in this implementation guide or listed above are exchanged between a PDMP Requester and PDMP Responder, they **SHOULD** conform to US Core profiles where applicable profiles exist.

<p></p>

*See the [full list of US Core profiles](https://www.hl7.org/fhir/us/core/profiles.html)*

<p></p>
<p></p>


