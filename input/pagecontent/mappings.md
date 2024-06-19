
- <mark>Changes are highlighted in the text on this page when possible
- <mark>Changes that can't be highlighted on this page are:
    - <mark>The PMIX and NCPDP mappings have been extensively updated and field orders have been aligned
    - <mark>ASAP Report mapping has been added with field order aligned with PMIX and NCPDP mappings
    
### Other Data Standards Supporting the PDMP Ecosystem

The broad PDMP ecosystem - from writing a prescription to reporting PDMP history - employs a combination of NCPDP, ASAP and PMIX/NIEM standards, as illustrated below:

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 1: Standards supporting the PDMP ecosystem</strong></figcaption>
  <p>
  <img src="pdmp-overview-standards.png" style="float:none">  
  </p>
</figure>
</div>

In Figure <mark>1</mark>, above, 
* prescribers write a prescription and forward it electronically to the pharmacy using NCPDP SCRIPT.
* upon <mark>dispensation</mark> or sale of the prescription, the pharmacy reports the <mark>dispensation</mark> to the appropriate PDMP system(s) using ASAP Standard for Prescription Drug Monitoring Programs (ASAP Reporting)
* PDMP systems exchange information between each other using PMIX/NIEM
* in contrast, getting the PDMP information to providers (prescribers and pharmacists) does not utilize a single, consistent, methodology.  Current implementations include
  * all PDMP provide a web portal for provider access
  * some PDMPs support NCPDP SCRIPT RxHistory for PDMP data transmission
  * some PDMPs support ASAP Web Services for PDMP data transmission
  * some PDMPs have other proprietary integration options for PDMP data transmission

<mark>In introducing FHIR as a methodology in connecting providers (prescribers and pharmacists) to the PDMPs, the Implementation Guide stakeholders</mark> agreed that mappings between FHIR, PMIX/NIEM, NCPDP SCRIPT RxHistory, <mark>and ASAP Reporting</mark> may be beneficial for users of this Implementation Guide.

### Mapping

Mapping from each FHIR resource in this Implementation Guide to PMIX/NIEM, NCPDP SCRIPT RxHistory, <mark>and ASAP Reporting</mark> is included in the resource <mark> profile page </mark>. On the resource page (e.g., [PDMP MedicationDispense](StructureDefinition-pdmp-medicationdispense.html)), click on the 'Mappings' tab and <mark>scroll to find the mapping of interest</mark>.  The following tables consolidate the mappings for request and response scenarios by standard.

<mark> Resources which are not profiled in this Implementation Guide (e.g, US Core Prescriber) do not include mappings to PMIX/NIEM, NCPDP SCRIPT RxHistory, or ASAP Reporting. Mapping to these resources is included below, but is not included in the resource definitions (e.g., the mapping tab for US Core Prescriber does not include mapping to PMIX/NIEM)

<mark> Fully qualified element names in each standard can be very long.  To reduce the text in each cell, the tables below provide "context" and "XPath" or "FHIRPath" for the mapped data elements.  The context is a simplified representation of the XPath/FHIRPath referring to the major nodes in the XML Schema, or PDMP FHIR Bundles defined in this Implementation Guide.  The XPath/FHIRPath are prefixes to the XPath or FHIRPath for each element.


#### NCPDP to FHIR Mapping for Request

<mark>This section includes a representative field mapping from NCPDP SCRIPT 2017071 RxHistoryRequest to the FHIR elements in this Implementation Guide.

<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable17{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable11{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable10{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable16{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr>
        <td class="maptable11">Element Group</td>
        <td class="maptable11">Element Name</td>
        <td class="maptable11">NCPDP Data Element</td>
        <td class="maptable11">FHIR Data Element</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="5">Request</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Message <br/> XPath:<i>/Message</i></td>
        <td class="maptable16">context: pdmp-bundle-request-message<br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request-message')</i></td>
      </tr>
      <tr>
        <td class="maptable17">Request ID</td>
        <td class="maptable17">Header/MessageID</td>
        <td class="maptable17">entry.resource.where(resourceType='MessageHeader').id</td>
      </tr>
      <tr>
        <td class="maptable17">Request date/time</td>
        <td class="maptable17">Header/SentTime</td>
        <td class="maptable17">timestamp</td>
      </tr>
      <tr>
        <td class="maptable17">Start Date</td>
        <td class="maptable17">Body/RxHistoryRequest/RequestedDates/StartDate</td>
        <td class="maptable17"><i>not supported</i></td>
      </tr>
      <tr>
        <td class="maptable17">End Date</td>
        <td class="maptable17">Body/RxHistoryRequest/RequestedDates/EndDate;</td>
        <td class="maptable17"><i>not supported</i></td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="4">Patient</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Rx History Request / Patient <br/> XPath: <i>/Message/Body/RxHistoryRequest/Patient/HumanPatient</i></td>
        <td class="maptable16">context: pdmp-bundle-request-message / pdmp-parameters-request / us-core-practitioner <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request-message').entry.resource.where(resourceType='Parameters').parameter.resource.where(resourceType='Patient')</i></td>
      </tr>
      <tr>
        <td class="maptable17">First Name</td>
        <td class="maptable17">Name/FirstName</td>
        <td class="maptable17">name.given</td>
      </tr>
      <tr>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">Name/LastName</td>
        <td class="maptable17">name.family</td>
      </tr>
      <tr>
        <td class="maptable17">Date of Birth</td>
        <td class="maptable17">DateOfBirth</td>
        <td class="maptable17">birthdate</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="4">Requester</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Rx History Request / Prescriber <br/> XPath: <i>/Message/Body/RxHistoryRequest/Prescriber/NonVeterinarian</i></td>
        <td class="maptable16">context: pdmp-bundle-request-message / pdmp-parameters-request / us-core-practitioner <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request-message').entry.resource.where(resourceType='Parameters').parameter.resource.where(resourceType='Practitioner')</i></td>
      </tr>
      <tr>
        <td class="maptable17">Name</td>
        <td class="maptable17">Name</td>
        <td class="maptable17">name</td>
      </tr>
        <td class="maptable17">NPI</td>
        <td class="maptable17">Identification/NPI</td>
        <td class="maptable17">identifier.where(system='http://hl7.org/fhir/sid/us-npi').value</td>
      </tr>
      <tr>
        <td class="maptable17">DEA</td>
        <td class="maptable17">Identification/DEANumber</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/NamingSystem/usdeanumber)'.value</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="6">Requesting Facility</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Rx History Request / Facility <br/> XPath: <i>/Message/Body/RxHistoryRequest</i></td>
        <td class="maptable16">context: pdmp-bundle-request-message / pdmp-parameters-request / us-core-organization <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request-message').entry.resource.where(resourceType='Parameters').parameter.resource.where(resourceType='Organization')</i></td>
      </tr>
      <tr>
        <td class="maptable17"> Name</td>
        <td class="maptable17">FacilityName</td>
        <td class="maptable17">name</td>
      </tr>
      <tr>
        <td class="maptable17">State</td>
        <td class="maptable17">Address/StateProvince</td>
        <td class="maptable17">address.state</td>
      </tr>
      <tr>
        <td class="maptable17">DEA</td>
        <td class="maptable17">Identification/DEANumber</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/NamingSystem/usdeanumber)'.value</td>
      </tr>
      <tr>
        <td class="maptable17">NCPDP ID</td>
        <td class="maptable17">Identification/NCPDPID</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber').value</td>
      </tr>
      <tr>
        <td class="maptable17">NPI</td>
        <td class="maptable17">Identification/NPI</td>
        <td class="maptable17">identifier.where(system='http://hl7.org/fhir/sid/us-npi').value</td>
      </tr>
    </tbody>
  </table>
</div>



#### NCPDP to FHIR Mappings for Response

<mark> This section includes a representative field mapping from NCPDP SCRIPT 2017071 RxHistoryResponse to the FHIR elements in this Implementation Guide.

<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr>
        <td class="maptable11">Element Group</td>
        <td class="maptable11">Element Name</td>
        <td class="maptable11">NCPDP Data Element </td>
        <td class="maptable11">FHIR Data Element </td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="5">Response Information</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Message <br/>XPath: <i>/Message</i></td>
        <td class="maptable16">context: pdmp-bundle-response-message<br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(resourceType='MessageHeader')</i></td>
      </tr>
      <tr>
        <td class="maptable17">Request ID</td>
        <td class="maptable17">Header/RelatesToMessageID</td>
        <td class="maptable17">response.identifier</td>
      </tr>
        <td class="maptable17">Response Date/Time</td>
        <td class="maptable17">Header/SentTime</td>
        <td class="maptable17">Parameters.extension.where(extension.url='phttp://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-header-timestamp-extension')</td>
      </tr>
      <tr>
        <td class="maptable17">Report Start Date</td>
        <td class="maptable17">Body/RxHistoryResponse/RequestedDates/StartDate</td>
        <td class="maptable17">Parameters.extension.where(extension.url='phttp://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-activity-period-extension').valuePeriod.start</td>
      </tr>
      <tr>
        <td class="maptable17">Report End date</td>
        <td class="maptable17">Body/RxHistoryResponse/RequestedDates/EndDate</td>
        <td class="maptable17">Parameters.extension.where(extension.url='phttp://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-activity-period-extension').valuePeriod.end</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="11">Patient</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Message / RxHistoryResponse / Patient <i>/Message/Body/RxHistoryResponse/Patient/HumanPatient</i></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-history-data / pdmp-patient <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(resourceType='Parameters').parameter.where(name='pdmp-history-data').resource.entry.resource.where(resourceType='Patient')</i></td>
      </tr>
      <tr>
        <td class="maptable17">First Name</td>
        <td class="maptable17">Name/FirstName</td>
        <td class="maptable17">name.given</td>
      </tr>
      <tr>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">Name/LastName</td>
        <td class="maptable17">name.family</td>
      </tr>
        <td class="maptable17">Date of Birth</td>
        <td class="maptable17">DateOfBirth</td>
        <td class="maptable17">birthdate</td>
      </tr>
      <tr>
        <td class="maptable17">Gender</td>
        <td class="maptable17">Gender</td>
        <td class="maptable17">gender</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address 1</td>
        <td class="maptable17">Address/AddressLine1</td>
        <td class="maptable17">address.line[0]</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address 2</td>
        <td class="maptable17">Address/AddressLine2</td>
        <td class="maptable17">address.line[1]</td>
      </tr>
      <tr>
        <td class="maptable17">City Address</td>
        <td class="maptable17">Address/City</td>
        <td class="maptable17">address.city</td>
      </tr>
      <tr>
        <td class="maptable17">State Code</td>
        <td class="maptable17">Address/StateProvince</td>
        <td class="maptable17">address.state</td>
      </tr>
      <tr>
        <td class="maptable17">Zip Code</td>
        <td class="maptable17">Address/PostalCode</td>
        <td class="maptable17">address.postalCode</td>
      </tr>
      <tr>
        <td class="maptable17">SSN</td>
        <td class="maptable17">Identification/SocialSecurity</td>
        <td class="maptable17">identifier.where(system=http://hl7.org/fhir/sid/us-ssn)</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="17">Prescription</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Message / RxHistoryResponse / MedicationDispensed <i>/Message/Body/RxHistoryResponse/MedicationDispensed</i></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-history-data / pdmp-patient <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(resourceType='Parameters').parameter.where(name='pdmp-history-data').resource.entry.resource.where(resourceType='MedicationDispense')</i></td>
      </tr>
      <tr>
        <td class="maptable17">Filled Date</td>
        <td class="maptable17">LastFillDate</td>
        <td class="maptable17">whenPrepared</td>
      </tr>
      <tr>
        <td class="maptable17">Written Date</td>
        <td class="maptable17">WrittenDate</td>
        <td class="maptable17">authorizingPrescription.authoredOn</td>
      </tr>
      <tr>
        <td class="maptable17">Number</td>
        <td class="maptable17">HistorySource/SourceReference</td>
        <td class="maptable17">identifier</td>
      </tr>
      <tr>
        <td class="maptable17">Drug Name</td>
        <td class="maptable17">DrugDescription</td>
        <td class="maptable17">medicationCodeableConcept.text</td>
      </tr>
      <tr>
        <td class="maptable17">Product ID Qualifier (NDC)</td>
        <td class="maptable17">DrugCoded/ProductCode/Qualifier = 'ND'</td>
        <td class="maptable17">medicationCodeableConcept.coding.system = 'http://hl7.org/fhir/sid/ndc'</td>
      </tr>
      <tr>
        <td class="maptable17">Product ID (NDC)</td>
        <td class="maptable17">DrugCoded/ProductCode/Code</td>
        <td class="maptable17">medicationCodeableConcept.coding.where(system='http://hl7.org/fhir/sid/ndc').code</td>
      </tr>
      <tr>
        <td class="maptable17">Drug Strength</td>
        <td class="maptable17">DrugCoded/Strength</td>
        <td class="maptable17">medicationCodeableConcept.ingredient.strength</td>
      </tr>
      <tr>
        <td class="maptable17">Dosage Form</td>
        <td class="maptable17">Quantity/QuantityUnitOfMeasure</td>
        <td class="maptable17">medicationCodeableConcept.form</td>
      </tr>
      <tr>
        <td class="maptable17">Drug Quantity</td>
        <td class="maptable17">Quantity/Value</td>
        <td class="maptable17">quantity</td>
      </tr>
      <tr>
        <td class="maptable17">Days of Supply</td>
        <td class="maptable17">DaysSupply</td>
        <td class="maptable17">daysSupply</td>
      </tr>
      <tr>
        <td class="maptable17">Refill Number</td>
        <td class="maptable17">HistorySource/FillNumber</td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-fill-number').valuePositiveInt</td>
      </tr>
      <tr>
        <td class="maptable17">Refills Authorized</td>
        <td class="maptable17"><i>not directly represented in RxHistoryResponse</i></td>
        <td class="maptable17">authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed</td>
      </tr>
      <tr>
        <td class="maptable17">Partial Fill Indicator</td>
        <td class="maptable17"><em>not supported in RxHistoryResponse</em></td>
        <td class="maptable17">type</td>
      </tr>
      <tr>
        <td class="maptable17">Method of Payment</td>
        <td class="maptable17">HistorySource/PaymentType</td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-method-of-payment')</td>
      </tr>
      <tr>
        <td class="maptable17">Opioid Treatment Code</td>
        <td class="maptable17"><i>not supported</i></td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-opioid-treatment-code').Coding.code</td>
      </tr>
      <tr>
        <td class="maptable17">Transmission Method</td>
        <td class="maptable17"><i>not supported</i></td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-transmission-method').Coding.code</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="11">Dispenser Organization</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Message / RxHistoryResponse / MedicationDispensed / Pharmacy<i>/Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy</i></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-history-data / pdmp-patient <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(resourceType='Parameters').parameter.where(name='pdmp-history-data').resource.entry.resource.where(resourceType='Organization')</i></td>
      </tr>
      <tr>
        <td class="maptable17">Name (Facility)</td>
        <td class="maptable17">BusinessName</td>
        <td class="maptable17">name</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address line 1</td>
        <td class="maptable17">Address/AddressLine1</td>
        <td class="maptable17">address.line[0]</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address line 2</td>
        <td class="maptable17">Address/AddressLine2</td>
        <td class="maptable17">address.line[1]</td>
      </tr>
      <tr>
        <td class="maptable17">City Address</td>
        <td class="maptable17">Address/City</td>
        <td class="maptable17">address.city</td>
      </tr>
      <tr>
        <td class="maptable17">State Code</td>
        <td class="maptable17">Address/StateProvince</td>
        <td class="maptable17">address.state</td>
      </tr>
      <tr>
        <td class="maptable17">Zip Code</td>
        <td class="maptable17">Address/PostalCode</td>
        <td class="maptable17">address.postalCode</td>
      </tr>
      <tr>
        <td class="maptable17">Phone Number</td>
        <td class="maptable17">CommunicationNumbers/PrimaryTelephone</td>
        <td class="maptable17">telecom</td>
      </tr>
      <tr>
        <td class="maptable17">DEA</td>
        <td class="maptable17">Identification/DEANumber</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/NamingSystem/usdeanumber)'.value</td>
      </tr>
      <tr>
        <td class="maptable17">NCPDP ID</td>
        <td class="maptable17">Identification/NCPDPID</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber').value</td>
      </tr>
      <tr>
        <td class="maptable17">NPI</td>
        <td class="maptable17">Identification/NPI</td>
        <td class="maptable17">identifier.where(system='http://hl7.org/fhir/sid/us-npi').value</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="12">Prescriber</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Message / RxHistoryResponse / MedicationDispensed / Prescriber <i>/Message/Body/RxHistoryResponse/MedicationDispensed/Prescriber</i></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-history-data / pdmp-patient <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(resourceType='Parameters').parameter.where(name='pdmp-history-data').resource.entry.resource.where(resourceType='Prescriber')</i></td>
      </tr>
      <tr>
        <td class="maptable17">First Name</td>
        <td class="maptable17">NonVeterinarian/Name/FirstName</td>
        <td class="maptable17">name.given</td>
      </tr>
      <tr>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">NonVeterinarian/Name/LastName</td>
        <td class="maptable17">name.family</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address Line 1</td>
        <td class="maptable17">NonVeterinarian/Address/AddressLine1</td>
        <td class="maptable17">address.line[0]</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address Line 2</td>
        <td class="maptable17">Prescriber/NonVeterinarian/Address/AddressLine2</td>
        <td class="maptable17">address.line[1]</td>
      </tr>
      <tr>
        <td class="maptable17">City Address</td>
        <td class="maptable17">NonVeterinarian/Address/City</td>
        <td class="maptable17">Practitioner.address.city</td>
      </tr>
      <tr>
        <td class="maptable17">State Code</td>
        <td class="maptable17">NonVeterinarian/Address/StateProvince</td>
        <td class="maptable17">Practitioner.address.state</td>
      </tr>
      <tr>
        <td class="maptable17">Zip Code</td>
        <td class="maptable17">NonVeterinarian/Address/PostalCode</td>
        <td class="maptable17">address.postalCode</td>
      </tr>
      <tr>
        <td class="maptable17">DEA Number</td>
        <td class="maptable17">NonVeterinarian/Identification/DEANumber</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/NamingSystem/usdeanumber)'.value</td>
      </tr>
      <tr>
        <td class="maptable17">NPI Number</td>
        <td class="maptable17">NonVeterinarian/Identification/NPI</td>
        <td class="maptable17">identifier.where(system='http://hl7.org/fhir/sid/us-npi').value</td>
      </tr>
      <tr>
        <td class="maptable17">State License</td>
        <td class="maptable17">NonVeterinarian/Identification/StateLicenseNumber</td>
        <td class="maptable17">identifier</td>
      </tr>
      <tr>
        <td class="maptable17">State of License</td>
        <td class="maptable17"><i>not supported</i></td>
        <td class="maptable17">identifier.extension.where(url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-jurisdiction')</td>
      </tr>
    </tbody>
  </table>
</div>


#### PMIX to FHIR Mapping for Request

<mark> This section includes a representative field mapping from PMIX/NIEM 4.0 Request to the FHIR elements in this Implementation Guide.

<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr>
        <td class="maptable11">Element Group</td>
        <td class="maptable11"> Element Name</td>
        <td class="maptable11">PMIX Data Element</td>
        <td class="maptable11">FHIR Data Element </td>
      </tr>
      <tr>
        <td class="maptable16" colspan="2"></td>
        <td class="maptable16">context: PMP Request <br/> XPath: <i>pmix:PMPRequest</i></td>
        <td class="maptable16">context: pdmp-bundle-request-message / pdmp-parameters-request / pdmp-patient <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request-message').entry.resource.where(resourceType='Parameters').parameter.where(name='patient')</i></td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="2">Request Date Range</td>
        <td class="maptable17">Start Date</td>
        <td class="maptable17">pmp:RequestPrescriptionDateRange/pmp:RequestPrescriptionDateRangeBegin</td>
        <td class="maptable17"><i>not supported</i></td>
      </tr>
      <tr>
        <td class="maptable17">End Date</td>
        <td class="maptable17">pmp:RequestPrescriptionDateRange/pmp:RequestPrescriptionDateRangeEnd</td>
        <td class="maptable17"><i>not supported</i></td>
      </tr>
      <tr>
        <td class="maptable16" colspan="2"></td>
        <td class="maptable16">context: <i>pmix:PMPRequest</i></td>
        <td class="maptable16">context: pdmp-bundle-request-message / pdmp-parameters-request / pdmp-patient <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-request-message').entry.resource.where(resourceType='Parameters').parameter.where(name='patient')</i></td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="3">Patient</td>
        <td class="maptable17">First Name</td>
        <td class="maptable17">pmp:RequestPatient/nc:PersonName/nc:PersonGivenName</td>
        <td class="maptable17">Patient.name.given</td>
      </tr>
      <tr>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">pmp:RequestPatient/nc:PersonName/nc:PersonSurName</td>
        <td class="maptable17">Patient.name.family</td>
      </tr>
      <tr>
        <td class="maptable17">Date of Birth</td>
        <td class="maptable17">pmp:RequestPatient/nc:PersonBirthDate/Date</td>
        <td class="maptable17">Patient.birthdate</td>
      </tr>
    </tbody>
  </table>
</div>


#### PMIX to FHIR Mapping for Response

<mark>This section includes a representative field mapping from PMIX/NIEM 4.0 Prescription Report to the FHIR elements in this Implementation Guide.

<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr>
        <td class="maptable11">Element Group</td>
        <td class="maptable11"> Element Name</td>
        <td class="maptable11">PMIX Data Element</td>
        <td class="maptable11">FHIR Data Element</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="4">Response Information</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Response Report <br/> XPath:<i>pmix:PMPPrescriptionReport/pmp:RequestResponsePrescriptionReport</i></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response').paramenter</i></td>
      </tr>
      <tr>
        <td class="maptable17">Report Date/Time</td>
        <td class="maptable17">pmp:ReportExecutionDate <br/> pmp:ReportExecutionTime </td>
        <td class="maptable17">extension.where(extension.url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-header-timestamp-extension')</td>
      </tr>
      <tr>
        <td class="maptable17">Report Start Date</td>
        <td class="maptable17">pmp:ReportDateRange/pmp:ReportDateRangeBegin</td>
        <td class="maptable17">extension.where(extension.url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-activity-period-extension').valuePeriod.start</td>
      </tr>
      <tr>
        <td class="maptable17">Report End Date</td>
        <td class="maptable17">pmp:ReportDateRange/pmp:ReportDateRangeEnd</td>
        <td class="maptable17">extension.where(extension.url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-activity-period-extension').valuePeriod.end</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="10">Patient</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Response Report / Prescription / Patient <br/>XPath: <i>pmix:PMPPrescriptionReport/pmp:RequestResponsePrescriptionReport/pmp:Prescription/pmp:Patient</i></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-history-data / us-core-patient <br/>FHIRPath: <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response').parameter.resource.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-history-result').entry.resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient')</i></td>
      </tr>
      <tr>
        <td class="maptable17">First Name</td>
        <td class="maptable17">nc:PersonName/nc:PersonGivenName</td>
        <td class="maptable17">name.given</td>
      </tr>
      <tr>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">nc:PersonName/nc:PersonSurName</td>
        <td class="maptable17">name.family</td>
      </tr>
      <tr>
        <td class="maptable17">Date of Birth</td>
        <td class="maptable17">nc:PersonBirthDate/Date</td>
        <td class="maptable17">birthdate</td>
      </tr>
      <tr>
        <td class="maptable17">Gender</td>
        <td class="maptable17">PersonSexCode</td>
        <td class="maptable17">gender</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address</td>
        <td class="maptable17">pmp:PersonPrimaryContactInformation/ContactMailingAddress/LocationStreet</td>
        <td class="maptable17">address.line</td>
      </tr>
      <tr>
        <td class="maptable17">City Address</td>
        <td class="maptable17">pmp:PersonPrimaryContactInformation/ContactMailingAddress/nc:LocationCityName</td>
        <td class="maptable17">address.city</td>
      </tr>
      <tr>
        <td class="maptable17">State Code</td>
        <td class="maptable17">pmp:PersonPrimaryContactInformation/ContactMailingAddress/LocationState</td>
        <td class="maptable17">address.state</td>
      </tr>
      <tr>
        <td class="maptable17">Zip Code</td>
        <td class="maptable17">pmp:PersonPrimaryContactInformation/ContactMailingAddress/nc:LocationPostalCode</td>
        <td class="maptable17">address.postalCode</td>
      </tr>
      <tr>
        <td class="maptable17">SSN</td>
        <td class="maptable17">PersonSocialSecurityNumberIdentifier</td>
        <td class="maptable17">identifier.where(system=http://hl7.org/fhir/sid/us-ssn).value</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="16">Prescription</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Response Report / Prescription <br/>XPath: <i>pmix:PMPPrescriptionReport/pmp:RequestResponsePrescriptionReport/pmp:Prescription</i></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-history-data / pdmp-medicationdispense <br/>FHIRPath: <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response').parameter.resource.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-history-result').entry.resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/pdmp-medicationdispense')</i></td>
      </tr>
      <tr>
        <td class="maptable17">Filled Date</td>
        <td class="maptable17">pmp:PrescriptionFilledDate</td>
        <td class="maptable17">whenPrepared</td>
      </tr>
      <tr>
        <td class="maptable17">Written Date</td>
        <td class="maptable17">pmp:PrescriptionWrittenDate</td>
        <td class="maptable17">authorizingPrescription.authoredOn</td>
      </tr>
      <tr>
        <td class="maptable17">Number</td>
        <td class="maptable17">pmp:PrescriptionNumberText</td>
        <td class="maptable17">identifier.value</td>
      </tr>
      <tr>
        <td class="maptable17">Drug Name</td>
        <td class="maptable17">pmp:PrescriptionDrug/pmp:DrugProductNameText</td>
        <td class="maptable17">medicationCodeableConcept.text</td>
      </tr>
      <tr>
        <td class="maptable17">Product NDC</td>
        <td class="maptable17">pmp:PrescriptionDrug/pmp:DrugNDCProductIdentifier</td>
        <td class="maptable17">medicationCodeableConcept.coding.where(system='http://hl7.org/fhir/sid/ndc').code</td>
      </tr>
      <tr>
        <td class="maptable17">Drug Strength</td>
        <td class="maptable17">pmp:PrescriptionDrug/pmp:DrugStrengthText</td>
        <td class="maptable17">medicationCodeableConcept.ingredient.strength</td>
      </tr>
      <tr>
        <td class="maptable17">Dosage Form</td>
        <td class="maptable17">pmp:PrescriptionDrug/pmp:DrugUnitOfMeasureText</td>
        <td class="maptable17">medicationCodeableConcept.form</td>
      </tr>
      <tr>
        <td class="maptable17">Drug Quantity</td>
        <td class="maptable17">pmp:DispensedQuantity</td>
        <td class="maptable17">quantity</td>
      </tr>
      <tr>
        <td class="maptable17">Days of Supply</td>
        <td class="maptable17">pmp:DaysSupplyCount</td>
        <td class="maptable17">daysSupply</td>
      </tr>
      <tr>
        <td class="maptable17">Refill Number</td>
        <td class="maptable17">pmp:DrugRefillNumberCount</td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-fill-number').valuePositiveInt</td>
      </tr>
      <tr>
        <td class="maptable17">Refills Authorized</td>
        <td class="maptable17">pmp:RefillsAuthorizedCount</td>
        <td class="maptable17">authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed</td>
      </tr>
      <tr>
        <td class="maptable17">Partial Fill Indicator</td>
        <td class="maptable17">pmp:PartialFillIndicator</td>
        <td class="maptable17">type</td>
      </tr>
      <tr>
        <td class="maptable17">Method of Payment</td>
        <td class="maptable17">pmp:MethodOfPaymentCode</td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-method-of-payment').code</td>
      </tr>
      <tr>
        <td class="maptable17">Opioid Treatment Code</td>
        <td class="maptable17">pmp:OpioidTreatmentCategoryCode</td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-opioid-treatment-code').Coding.code</td>
      </tr>
      <tr>
        <td class="maptable17">Transmission Method</td>
        <td class="maptable17">pmp:TransmissionFormOfRxOriginCode</td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-transmission-method').Coding.code</td>
      </tr>
      <tr>
         <td class="maptable16" rowspan="10">Dispenser Organization</td>
       <td class="maptable16"></td>
        <td class="maptable16">context: Response Report / Prescription / Dispenser <br/>XPath: <i>pmix:PMPPrescriptionReport/pmp:RequestResponsePrescriptionReport/pmp:Prescription/pmp:Dispenser</i></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-history-data / pdmp-organization-pharmacy <br/>FHIRPath: <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response').parameter.resource.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-history-result').entry.resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/pdmp-organization-pharmacy')</i></td>
      </tr>
      <tr>
        <td class="maptable17">Name (Facility)</td>
        <td class="maptable17">nc:OrganizationDoingBusinessAsName</td>
        <td class="maptable17">name</td>
      </tr>
      <tr>
        <td class="maptable17"> Street Address</td>
        <td class="maptable17">nc:OrganizationPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationStreet/nc:StreetFullText</td>
        <td class="maptable17">address.line</td>
      </tr>
      <tr>
        <td class="maptable17">City Address</td>
        <td class="maptable17">nc:OrganizationPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationCityName</td>
        <td class="maptable17">address.city</td>
      </tr>
      <tr>
        <td class="maptable17">State Code</td>
        <td class="maptable17">nc:OrganizationPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationStateUSPostalServiceCode</td>
        <td class="maptable17">address.state</td>
      </tr>
      <tr>
        <td class="maptable17">Zip Code</td>
        <td class="maptable17">nc:OrganizationPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationPostalCode</td>
        <td class="maptable17">address.postalCode</td>
      </tr>
      <tr>
        <td class="maptable17">Phone Number</td>
        <td class="maptable17">nc:OrganizationPrimaryContactInformation/nc:ContactTelephoneNumber/nc:FullTelephoneNumber</td>
        <td class="maptable17">telecom</td>
      </tr>
      <tr>
        <td class="maptable17">DEA</td>
        <td class="maptable17">pmp:DEANumberIdentifier</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/NamingSystem/usdeanumber)'.value</td>
      </tr>
      <tr>
        <td class="maptable17">NCPDP ID</td>
        <td class="maptable17">pmp:NCPDPIdentifier</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber').value</td>
      </tr>
      <tr>
        <td class="maptable17">NPI</td>
        <td class="maptable17">pmp:NPIIdentifier</td>
        <td class="maptable17">identifier.where(system='http://hl7.org/fhir/sid/us-npi').value</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="11">Prescriber</td>
        <td class="maptable16"></td>
        <td class="maptable16">context: Response Report / Prescription / Prescriber <br/>XPath: <i>pmix:PMPPrescriptionReport/pmp:RequestResponsePrescriptionReport/pmp:Prescription/pmp:Prescriber</i></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-history-data / us-core-practitioner <br/>FHIRPath: <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response').parameter.resource.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-history-result').entry.resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner')</i></td>
      </tr>
      <tr>
        <td class="maptable17">First Name</td>
        <td class="maptable17">nc:PersonName/nc:PersonGivenName</td>
        <td class="maptable17">resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner').name.given</td>
      </tr>
      <tr>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">nc:PersonName/nc:PersonSurName</td>
        <td class="maptable17">resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner').name.family</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address</td>
        <td class="maptable17">pmp:PersonPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationStreet/nc:StreetFullText</td>
        <td class="maptable17">resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner').address.line</td>
      </tr>
      <tr>
        <td class="maptable17">City Address</td>
        <td class="maptable17">pmp:PersonPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationCityName</td>
        <td class="maptable17">resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner').address.city</td>
      </tr>
      <tr>
        <td class="maptable17">State Code</td>
        <td class="maptable17">pmp:PersonPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationStateUSPostalServiceCode</td>
        <td class="maptable17">resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner').address.state</td>
      </tr>
      <tr>
        <td class="maptable17">Zip Code</td>
        <td class="maptable17">pmp:PersonPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationPostalCode</td>
        <td class="maptable17">resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner').address.postalCode</td>
      </tr>
      <tr>
        <td class="maptable17">DEA </td>
        <td class="maptable17">pmp:DEANumberIdentifier/nc:IdentificationID</td>
        <td class="maptable17">resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner').identifier</td>
      </tr>
      <tr>
        <td class="maptable17">NPI </td>
        <td class="maptable17">pmp:NPIIdentifier/nc:IdentificationID</td>
        <td class="maptable17">resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner').identifier.where(coding.system'http://hl7.org/fhir/sid/us-npi')</td>
      </tr>
      <tr>
        <td class="maptable17">State License </td>
        <td class="maptable17">pmp:StateLicenseIdentifier:nc:IdentificationID</td>
        <td class="maptable17">resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner').identifier</td>
      </tr>
      <tr>
        <td class="maptable17">State of License</td>
        <td class="maptable17">pmp:StateLicenseIdentifier:nc:IdentificationJurisdiction</td>
        <td class="maptable17">resource.where(meta.profile='http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner').identifier</td>
      </tr>
    </tbody>
  </table>
</div>

#### <mark>ASAP to FHIR Mappings for dispensation Data

<mark> This section includes a representative field mapping from ASAP Version 5.0 (& 4.2B) Standard for Prescription Drug Monitoring Programs (ASAP Reporting) to the FHIR elements in this Implementation Guide.

<mark> While this Implementation Guide does not address the dispensation reporting from the Dispenser to the PDMP(s).  However, the PDMP Stakeholders who participated in the development of this Implementation Guide asked to include this mapping to relate the information they receive (i.e., via ASAP Reporting) to the information they would report under this Implementation Guide.  The PDMP Stakeholders opted to not include mapping to ASAP Web Service Standard.

<mark> At the time of development, ASAP Reporting 4.2B was transitioning to 5.0.  The fields pertinent to this mapping have the same designation and name in both 4.2B and 5.0.

<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr>
        <td class="maptable11">Element Group</td>
        <td class="maptable11">Element Name</td>
        <td class="maptable11">ASAP Data Element</td>
        <td class="maptable11">FHIR Data Element</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="11">Patient</td>
        <td class="maptable16"></td>
        <td class="maptable16"></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-patient <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(resourceType='Parameters').parameter.where(name='pdmp-history-data').resource.entry.resource.where(resourceType='Patient')</i></td>
      </tr>
      <tr>
        <td class="maptable17">First Name</td>
        <td class="maptable17">PAT08 First Name</td>
        <td class="maptable17">name.given</td>
      </tr>
      <tr>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">PAT07 Last Name</td>
        <td class="maptable17">name.family</td>
      </tr>
        <td class="maptable17">Date of Birth</td>
        <td class="maptable17">PAT18 Date of Birth</td>
        <td class="maptable17">birthdate</td>
      </tr>
      <tr>
        <td class="maptable17">Gender</td>
        <td class="maptable17">PAT19 Gender Code</td>
        <td class="maptable17">gender</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address 1</td>
        <td class="maptable17">PAT12 Address Information - 1</td>
        <td class="maptable17">address.line[0]</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address 2</td>
        <td class="maptable17">PAT13 Address Information - 2</td>
        <td class="maptable17">address.line[1]</td>
      </tr>
      <tr>
        <td class="maptable17">City Address</td>
        <td class="maptable17">PAT14 City Address</td>
        <td class="maptable17">address.city</td>
      </tr>
      <tr>
        <td class="maptable17">State Code</td>
        <td class="maptable17">PAT15 Jurisdiction/State Address</td>
        <td class="maptable17">address.state</td>
      </tr>
      <tr>
        <td class="maptable17">Zip Code</td>
        <td class="maptable17">PAT16 Zip Code Address</td>
        <td class="maptable17">address.postalCode</td>
      </tr>
      <tr>
        <td class="maptable17">SSN</td>
        <td class="maptable17">PAT03 ID of Patient <br/> with PAT02 ID Qualifier = '07'</td>
        <td class="maptable17">identifier.where(system=http://hl7.org/fhir/sid/us-ssn)</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="17">Prescription</td>
        <td class="maptable16"></td>
        <td class="maptable16"></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-medicationdispense <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(resourceType='Parameters').parameter.where(name='pdmp-history-data').resource.entry.resource.where(resourceType='MedicationDispense')</i></td>
      </tr>
      <tr>
        <td class="maptable17">Filled Date</td>
        <td class="maptable17">DSP05 Date Filled</td>
        <td class="maptable17">whenPrepared</td>
      </tr>
      <tr>
        <td class="maptable17">Written Date</td>
        <td class="maptable17">DSP03 Date Written</td>
        <td class="maptable17">authorizingPrescription.authoredOn</td>
      </tr>
      <tr>
        <td class="maptable17">Number</td>
        <td class="maptable17">DSP02 Prescription Number</td>
        <td class="maptable17">identifier</td>
      </tr>
      <tr>
        <td class="maptable17">Drug Name</td>
        <td class="maptable17"><i>not supported</i></td>
        <td class="maptable17">medicationCodeableConcept.text</td>
      </tr>
      <tr>
        <td class="maptable17">Product ID Qualifier (NDC)</td>
        <td class="maptable17">DSP07 Product ID Qualifier = '01'</td>
        <td class="maptable17">medicationCodeableConcept.coding.system='http://hl7.org/fhir/sid/ndc'</td>
      </tr>
      <tr>
        <td class="maptable17">Product ID (NDC)</td>
        <td class="maptable17">DSP08 Product ID</td>
        <td class="maptable17">medicationCodeableConcept.coding.where(system='http://hl7.org/fhir/sid/ndc').code</td>
      </tr>
      <tr>
        <td class="maptable17">Drug Strength</td>
        <td class="maptable17"><i>not supported</i></td>
        <td class="maptable17">medicationCodeableConcept.ingredient.strength</td>
      </tr>
      <tr>
        <td class="maptable17">Dosage Form</td>
        <td class="maptable17">DSP11 Drug Dosage Units Code</td>
        <td class="maptable17">medicationCodeableConcept.form</td>
      </tr>
      <tr>
        <td class="maptable17">Drug Quantity</td>
        <td class="maptable17">DSP09 Quantity Dispensed</td>
        <td class="maptable17">quantity</td>
      </tr>
      <tr>
        <td class="maptable17">Days of Supply</td>
        <td class="maptable17">DSP10 Days Supply</td>
        <td class="maptable17">daysSupply</td>
      </tr>
      <tr>
        <td class="maptable17">Refill Number</td>
        <td class="maptable17">DSP06 Fill Number</td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-fill-number').valuePositiveInt</td>
      </tr>
      <tr>
        <td class="maptable17">Refills Authorized</td>
        <td class="maptable17">DSP04 Refills Authorized</td>
        <td class="maptable17">authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed</td>
      </tr>
      <tr>
        <td class="maptable17">Partial Fill Indicator</td>
        <td class="maptable17">DSP13 Partial Fill Indicator</td>
        <td class="maptable17">type</td>
      </tr>
      <tr>
        <td class="maptable17">Method of Payment</td>
        <td class="maptable17">DSP16 Classification Code For Payment Type</td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-method-of-payment').Coding.code</td>
      </tr>
      <tr>
        <td class="maptable17">Opioid Treatment Code</td>
        <td class="maptable17">DSP24 Opioid Treatment Type</td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-opioid-treatment-code').Coding.code</td>
      </tr>
      <tr>
        <td class="maptable17">Transmission Method</td>
        <td class="maptable17">DSP12 Transmission Form of Rx Origin Code</td>
        <td class="maptable17">extension.where(url='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-extension-rx-transmission-method').Coding.code</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="10">Dispenser Organization</td>
        <td class="maptable16"></td>
        <td class="maptable16"></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-organization-pharmacy <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(resourceType='Parameters').parameter.where(name='pdmp-history-data').resource.entry.resource.where(resourceType='Organization')</i></td>
      </tr>
      <tr>
        <td class="maptable17">Name (Facility)</td>
        <td class="maptable17">PHA04 Pharmacy or Dispensing Prescriber Name</td>
        <td class="maptable17">name</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address line 1</td>
        <td class="maptable17">PHA05 Address Information -1</td>
        <td class="maptable17">address.line[0]</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address line 2</td>
        <td class="maptable17">PHA05 Address Information - 2</td>
        <td class="maptable17">address.line[1] </td>
      </tr>
      <tr>
        <td class="maptable17">City Address</td>
        <td class="maptable17">PHA07 City Address</td>
        <td class="maptable17">address.city</td>
      </tr>
      <tr>
        <td class="maptable17">State Code</td>
        <td class="maptable17">PHA08 State Address</td>
        <td class="maptable17">address.state</td>
      </tr>
      <tr>
        <td class="maptable17">Zip Code</td>
        <td class="maptable17">PHA09 ZIP Code Address</td>
        <td class="maptable17">address.postalCode</td>
      </tr>
      <tr>
        <td class="maptable17">Phone Number</td>
        <td class="maptable17">PHA10 Phone Number</td>
        <td class="maptable17">telecom</td>
      </tr>
      <tr>
        <td class="maptable17">DEA</td>
        <td class="maptable17">PHA03 DEA Number</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/NamingSystem/usdeanumber)'.value</td>
      </tr>
      <tr>
        <td class="maptable17">NCPDP ID</td>
        <td class="maptable17">PHA02 NCPDP Provider ID</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber').value</td>
      </tr>
      <tr>
        <td class="maptable16" rowspan="12">Prescriber</td>
        <td class="maptable16"></td>
        <td class="maptable16"></td>
        <td class="maptable16">context: pdmp-bundle-response-message / pdmp-parameters-response / pdmp-organization-pharmacy <br/>FHIRPath:  <i>Bundle.where(meta.profile='http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-response-message').entry.resource.where(resourceType='Parameters').parameter.where(name='pdmp-history-data').resource.entry.resource.where(resourceType='Prescriber')</i></td>
      </tr>
      <tr>
        <td class="maptable17">First Name</td>
        <td class="maptable17">PRE06 First Name</td>
        <td class="maptable17">name.given</td>
      </tr>
      <tr>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">PRE05 Last Name</td>
        <td class="maptable17">name.family</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address line 1</td>
        <td class="maptable17">PRE11 Prescriber Address Information - 1</td>
        <td class="maptable17">address.line[0]</td>
      </tr>
      <tr>
        <td class="maptable17">Street Address line 2</td>
        <td class="maptable17">PRE11 Prescriber Address Information - 2</td>
        <td class="maptable17">address.line[1]</td>
      </tr>
      <tr>
        <td class="maptable17">City Address</td>
        <td class="maptable17">PRE13 Prescriber City Address</td>
        <td class="maptable17">address.city</td>
      </tr>
      <tr>
        <td class="maptable17">State Code</td>
        <td class="maptable17">PRE14 Prescriber State Address</td>
        <td class="maptable17">address.state</td>
      </tr>
      <tr>
        <td class="maptable17">Zip Code</td>
        <td class="maptable17">PRE15 ZIP Code Address</td>
        <td class="maptable17">address.postalCode</td>
      </tr>
      <tr>
        <td class="maptable17">DEA</td>
        <td class="maptable17">PRE02 DEA Number</td>
        <td class="maptable17">identifier.where(system='http://terminology.hl7.org/NamingSystem/usdeanumber)'.value</td>
      </tr>
      <tr>
        <td class="maptable17">NPI</td>
        <td class="maptable17">PRE01 National Provider Identifier (NPI)</td>
        <td class="maptable17">identifier.where(system='http://hl7.org/fhir/sid/us-npi').value</td>
      </tr>
      <tr>
        <td class="maptable17">State License</td>
        <td class="maptable17">PRE04 Prescriber License Number</td>
        <td class="maptable17">identifier</td>
      </tr>
      <tr>
        <td class="maptable17">State of License</td>
        <td class="maptable17"><i>not supported</i></td>
        <td class="maptable17">identifier.extension.where(url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-jurisdiction')</td>
      </tr>
    </tbody>
  </table>
</div>


