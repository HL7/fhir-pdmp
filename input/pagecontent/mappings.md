### Other Data Standards Supporting the PDMP Ecosystem

The broad PDMP ecosystem - from writing a prescription to reporting PDMP history, employs a combination of NCPDP, ASAP and PMIX/NIEM standards, as illustrated below:

<div>
<figure class="figure">
<figcaption class="figure-caption"><strong>Figure 1: Standards supporting the PDMP ecosystem</strong></figcaption>
  <p>
  <img src="pdmp-overview-standards.png" style="float:none">  
  </p>
</figure>
</div>

In Figure 8.1, above, 
* prescribers write a prescription and forward it electronically to the pharmacy using NCPDP SCRIPT.
* upon dispensing or sale of the prescription, the pharmacy reports the dispensation to the appropriate PDMP system(s) using ASAP
* PDMP systems exchange information between each other using PMIX/NIEM
* in contrast, getting the PDMP information to providers (prescribers and pharmacists) does not utilize a single, consistent, methodology.  Current implementations include
  * all PDMP provide a web portal for provider access
  * some PDMPs support NCPDP SCRIPT RxHistory for PDMP data transmission
  * some PDMPs support ASAP Web Services for PDMP data transmission
  * some PDMPs have other proprietary integration options for PDMP data transmission

The stakeholders that participated in the development of this Implementation Guide agreed that mappings between FHIR, PMIX/NIEM, and NCPDP SCRIPT RxHistory may be beneficial for users of this Implementation Guide.

### Mapping

Specific mapping from each FHIR resource in this Implementation Guide to PMIX/NIEM and NCPDP SCRIPT RxHistory is included in the description of each resource.  Specific links follow.  Generally, On the resource page (e.g., [PDMP MedicationDispense](StructureDefinition-pdmp-medicationdispense.html)), click on the 'Mappings' tab and then scroll to the bottom of the page to find the PMIX/NIEM and NCPDP SCRIPT RxHistory mapping.

Links to the mappings
- [PDMP MedicationDispense Mapping](StructureDefinition-pdmp-medicationdispense-mappings.html)
- [PDMP MedicationDispense map to NCPDP SCRIPT RxHistory](StructureDefinition-pdmp-medicationdispense-mappings.html#mappings-for-ncpdp-script-2017071-rxhistory-response-http-ncpdp-orgscript2017071rxhistoryresponse)

- [PDMP MedicationDispense map to PMIX/NIEM 4.0 Response](StructureDefinition-pdmp-medicationdispense-mappings.html#mappings-for-pmixniem-4-0-prescription-report-http-pmixpmp-orgniem4-0extension)


The following tables consolidate the mappings for request and response scenarios.

#### NCPDP Mappings for Request

This section includes the minimal mapping for the request from an EHR to a state PDMP using NCPDP SCRIPT 2017071 RxHistoryRequest.

<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable17{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable11{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable10{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable16{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr style='height:20px;'>
        <td class="maptable10"></td>
        <td class="maptable11"> Request Data Element</td>
        <td class="maptable11">NCPDP Data Element</td>
        <td class="maptable11">FHIR Data Element</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="4">Request</td>
        <td class="maptable17">Requester</td>
        <td class="maptable17">Prescriber/NonVeterinarian/Name</td>
        <td class="maptable17">Practitioner.name</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Requester Role</td>
        <td class="maptable17">RequestorRole</td>
        <td class="maptable17">PractitionerRole.code</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Request ID</td>
        <td class="maptable17">Message/Header/MessageID</td>
        <td class="maptable17">MessageHeader.id</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Request date/ timestamp</td>
        <td class="maptable17">Message/Header/SentTime</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-header-timestamp-extension)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Requester Identifier</td>
        <td class="maptable17">NPI Number*</td>
        <td class="maptable17">Prescriber/NonVeterinarian/Identification/NPI</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">Prescriber/NonVeterinarian/Identification/DEANumber</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Requesting Facility ID</td>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">Facility/Identification/DEANumber</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NCPDP Number*</td>
        <td class="maptable17">Facility/Identification/NCPDPID</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NPI*</td>
        <td class="maptable17">Facility/Identification/NPI</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:28px;'>
        <td class="maptable16" rowspan="2">Requesting Facility</td>
        <td class="maptable17">Facility Name</td>
        <td class="maptable17">Facility/FacilityName</td>
        <td class="maptable17">Organization.name</td>
      </tr>
      <tr style='height:28px;'>
        <td class="maptable17">State code of Requesting Facility</td>
        <td class="maptable17">Facility/Address/StateProvince</td>
        <td class="maptable17">Organization.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Patient</td>
        <td class="maptable17">First Name</td>
        <td class="maptable17">Patient/HumanPatient/Name/FirstName</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">Patient/HumanPatient/Name/LastName</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.name.family</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Date of Birth</td>
        <td class="maptable17">Patient/HumanPatient/DateOfBirth</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.birthdate</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Request Prescription Date Range</td>
        <td class="maptable17">Start Date</td>
        <td class="maptable17">RequestedDates/StartDate</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.validityPeriod</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">End Date</td>
        <td class="maptable17">RequestedDates/EndDate;</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.validityPeriod</td>
      </tr>
      <tr style='height:40px;'>
        <td class="maptable17"></td>
        <td class="maptable17" colspan="3">* Conditionally required data elements have asterisks (*), meaning at least one data element is required within this category. For example, under Requesting Facility ID, one of the three data elements (DEA Number, NCPDP Number or NPI) is required.</td>
      </tr>
    </tbody>
  </table>
</div>



#### NCPDP Mappings for Response

This section includes the minimal mapping for the  response from a state  to an EHR using NCPDP SCRIPT 2017071 RxHistoryResponse.

<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable17{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable11{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable10{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable16{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr style='height:19px;'>
        <td class="maptable10"></td>
        <td class="maptable11">Response Data Element</td>
        <td class="maptable11">NCPDP Data Element</td>
        <td class="maptable11">FHIR Data Element</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" colspan="4">Routing Information</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="4"></td>
        <td class="maptable17">Response Date/Timestamp</td>
        <td class="maptable17">Message/Header/SentTime</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-header-timestamp-extension)</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Response Prescription Date Range (Start Date)</td>
        <td class="maptable17">RequestedDates/StartDate</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-response-prescription-period-extension - Period.start)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Response Prescription Date Range (End date)</td>
        <td class="maptable17">RequestedDates/EndDate</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-response-prescription-period-extension - Period.end)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Request ID</td>
        <td class="maptable17">Message/Header/RelatesToMessageID</td>
        <td class="maptable17">MessageHeader.response.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" colspan="4">Message Body</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="10">Patient</td>
        <td class="maptable17">Patient First Name</td>
        <td class="maptable17">Patient/HumanPatient/Name/FirstName</td>
        <td class="maptable17">Patient.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient Last Name</td>
        <td class="maptable17">Patient/HumanPatient/Name/LastName</td>
        <td class="maptable17">Patient.name.family</td>
      </tr>
        <td class="maptable17">Patient Date of Birth</td>
        <td class="maptable17">Patient/HumanPatient/DateOfBirth</td>
        <td class="maptable17">Patient.birthdate</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient Gender</td>
        <td class="maptable17">Patient/HumanPatient/Gender</td>
        <td class="maptable17">Patient.gender</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Patient Street Address 1</td>
        <td class="maptable17">Patient/HumanPatient/Address/AddressLine1</td>
        <td class="maptable17">Patient.address.line[0]</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Patient Street Address 2</td>
        <td class="maptable17">Patient/HumanPatient/Address/AddressLine2</td>
        <td class="maptable17">Patient.address.line[1]</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient City Address</td>
        <td class="maptable17">Patient/HumanPatient/Address/City</td>
        <td class="maptable17">Patient.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient State Code</td>
        <td class="maptable17">Patient/HumanPatient/Address/StateProvince</td>
        <td class="maptable17">Patient.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient Zip Code</td>
        <td class="maptable17">Patient/HumanPatient/Address/PostalCode</td>
        <td class="maptable17">Patient.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">SSN*</td>
        <td class="maptable17">Patient/HumanPatient/Identification/SocialSecurity</td>
        <td class="maptable17">Patient.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="12">Prescription</td>
        <td class="maptable17">Prescription Filled Date</td>
        <td class="maptable17">MedicationDispensed/LastFillDate</td>
        <td class="maptable17">MedicationDispense.whenPrepared</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescription Written Date</td>
        <td class="maptable17">MedicationDispensed/WrittenDate</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.authoredOn</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescription Number</td>
        <td class="maptable17">MedicationDispensed/HistorySource/SourceReference</td>
        <td class="maptable17">MedicationDispense.Identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Drug Name[1]</td>
        <td class="maptable17">MedicationDispensed/DrugDescription</td>
        <td class="maptable17">MedicationDispense.medicationReference.text</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Drug Strength[1]</td>
        <td class="maptable17">MedicationDispensed/DrugCoded/Strength</td>
        <td class="maptable17">MedicationDispense.medicationReference.ingredient.strength</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Dosage Form[2]</td>
        <td class="maptable17">MedicationDispensed/Quantity/QuantityUnitOfMeasure</td>
        <td class="maptable17">MedicationDispense.medicationReference.form</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Drug Quantity</td>
        <td class="maptable17">MedicationDispensed/Quantity/Value</td>
        <td class="maptable17">MedicationDispense.quantity</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Days of Supply</td>
        <td class="maptable17">MedicationDispensed/DaysSupply</td>
        <td class="maptable17">MedicationDispense.daysSupply</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Refill Number</td>
        <td class="maptable17">MedicationDispensed/HistorySource/FillNumber</td>
        <td class="maptable17">MedicationDispense.type</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Refills Authorized</td>
        <td class="maptable17"><i>not directly represented in RxHistoryResponse</i></td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Partial Fill Indicator</td>
        <td class="maptable17"><em>not supported in RxHistoryResponse</em></td>
        <td class="maptable17">MedicationDispense.type</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Method of Payment</td>
        <td class="maptable17">MedicationDispensed/HistorySource/PaymentType</td>
        <td class="maptable17"><i>are we including this in our response? SCRIPT uses code list PaymentType</i></td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Drug</td>
        <td class="maptable17">Product ID Qualifier</td>
        <td class="maptable17">MedicationDispensed/DrugCoded/ProductCode/Qualifier</td>
        <td class="maptable17">MedicationDispense.medicationReference.code.coding.system</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Product ID</td>
        <td class="maptable17">MedicationDispensed/DrugCoded/ProductCode/Code</td>
        <td class="maptable17">MedicationDispense.medicationReference.code.coding.code</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable16" rowspan="6">Dispenser Organization</td>
        <td class="maptable17">Dispenser Organization Name (Facility)</td>
        <td class="maptable17">MedicationDispensed/Pharmacy/BusinessName</td>
        <td class="maptable17">Organization.name</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Dispenser Organization Street Address</td>
        <td class="maptable17">MedicationDispensed/Pharmacy/Address/AddressLine1<br/>MedicationDispensed/Pharmacy/Address/AddressLine2</td>
        <td class="maptable17">Organization.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Dispenser Organization City Address</td>
        <td class="maptable17">MedicationDispensed/Pharmacy/Address/City</td>
        <td class="maptable17">Organization.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Dispenser Organization State Code</td>
        <td class="maptable17">MedicationDispensed/Pharmacy/Address/StateProvince</td>
        <td class="maptable17">Organization.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Dispenser Organization Zip Code</td>
        <td class="maptable17">MedicationDispensed/Pharmacy/Address/PostalCode</td>
        <td class="maptable17">Organization.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Dispenser Organization Phone Number</td>
        <td class="maptable17">MedicationDispensed/Pharmacy/CommunicationNumbers/PrimaryTelephone</td>
        <td class="maptable17">Organization.telecom</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Dispenser Organization (Pharmacy identifier)</td>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">MedicationDispensed/Pharmacy/Identification/DEANumber</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NCPDP Number*</td>
        <td class="maptable17">MedicationDispensed/Pharmacy/Identification/NCPDPID</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NPI Number*</td>
        <td class="maptable17">MedicationDispensed/Pharmacy/Identification/NPI</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="6">Prescriber</td>
        <td class="maptable17">Prescriber First Name</td>
        <td class="maptable17">MedicationDispensed/Prescriber/NonVeterinarian/Name/FirstName</td>
        <td class="maptable17">Practitioner.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescriber Last Name</td>
        <td class="maptable17">MedicationDispensed/Prescriber/NonVeterinarian/Name/LastName</td>
        <td class="maptable17">Practitioner.name.family</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Prescriber Street Address</td>
        <td class="maptable17">MedicationDispensed/Prescriber/NonVeterinarian/Address/AddressLine1 <br/>MedicationDispensed/Prescriber/NonVeterinarian/Address/AddressLine2</td>
        <td class="maptable17">Practitioner.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescriber City Address</td>
        <td class="maptable17">MedicationDispensed/Prescriber/NonVeterinarian/Address/City</td>
        <td class="maptable17">Practitioner.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescriber State Code</td>
        <td class="maptable17">MedicationDispensed/Prescriber/NonVeterinarian/Address/StateProvince</td>
        <td class="maptable17">Practitioner.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescriber Zip Code</td>
        <td class="maptable17">MedicationDispensed/Prescriber/NonVeterinarian/Address/PostalCode</td>
        <td class="maptable17">Practitioner.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="4">Prescriber Identifier</td>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">MedicationDispensed/Prescriber/NonVeterinarian/Identification/DEANumber</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NPI Number*</td>
        <td class="maptable17">MedicationDispensed/Prescriber/NonVeterinarian/Identification/DEANumb…</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">State License* Identifier</td>
        <td class="maptable17">MedicationDispensed/Prescriber/NonVeterinarian/Identification/StateLicenseNumber</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">State of License*</td>
        <td class="maptable17">NA</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:42px;'>
        <td class="maptable17"></td>
        <td class="maptable17" colspan="3">* Conditionally required data elements have asterisks (*), meaning at least one data element is required within this category. For example, under Requesting Facility ID, one of the three data elements (DEA Number, NCPDP Number or NPI) is required.</td>
      </tr>
    </tbody>
  </table>
</div>


#### PMIX Mappings for  Request

This section includes the minimal mapping for the  request from an EHR to a state  using PMIX.

<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable17{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable11{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable10{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable16{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr style='height:20px;'>
        <td class="maptable10"></td>
        <td class="maptable11"> Request Data Element</td>
        <td class="maptable11">PMIX Data Element</td>
        <td class="maptable11">FHIR Data Element</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" colspan="4">Routing Information</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="4">Request</td>
        <td class="maptable17">Requester</td>
        <td class="maptable17">pmix:Requester</td>
        <td class="maptable17">Practitioner.name</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Requester Role</td>
        <td class="maptable17">pmix:RequesterRole</td>
        <td class="maptable17">PractitionerRole.code</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Request ID</td>
        <td class="maptable17">pmix:RequestID</td>
        <td class="maptable17">MessageHeader.id</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Request date/ timestamp</td>
        <td class="maptable17">n/a</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-header-timestamp-extension)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Requester Identifier</td>
        <td class="maptable17">NPI Number*</td>
        <td class="maptable17">nc:IdentificationID</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">nc:IdentificationID</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Requesting Facility ID</td>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">nc:IdentificationID</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NCPDP Number*</td>
        <td class="maptable17">nc:IdentificationID</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NPI*</td>
        <td class="maptable17">nc:IdentificationID</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:28px;'>
        <td class="maptable16" rowspan="2">Requesting Facility</td>
        <td class="maptable17">Facility Name</td>
        <td class="maptable17">nc:OrganizationDoingBusinessAsName</td>
        <td class="maptable17">Organization.name</td>
      </tr>
      <tr style='height:28px;'>
        <td class="maptable17">State code of Requesting Facility</td>
        <td class="maptable17">nc:LocationStateUSPostalServiceCode</td>
        <td class="maptable17">Organization.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" colspan="4">Message Body</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Patient</td>
        <td class="maptable17">First Name</td>
        <td class="maptable17">nc:PersonGivenName</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">nc:PersonSurName</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.name.family</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Date of Birth</td>
        <td class="maptable17">nc:Date</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.birthdate</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Request Prescription Date Range</td>
        <td class="maptable17">Start Date</td>
        <td class="maptable17">pmp:RequestPrescriptionDateRangeBegin</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.validityPeriod</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">End Date</td>
        <td class="maptable17">pmp:RequestPrescriptionDateRangeEnd</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.validityPeriod</td>
      </tr>
      <tr style='height:40px;'>
        <td class="maptable17"></td>
        <td class="maptable17" colspan="3">* Conditionally required data elements have asterisks (*), meaning at least one data element is required within this category. For example, under Requesting Facility ID, one of the three data elements (DEA Number, NCPDP Number or NPI) is required.</td>
      </tr>
    </tbody>
  </table>
</div>


#### PMIX Mappings for  Response

This section includes the minimal mapping for the  response from a state  to an EHR using PMIX.

<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable17{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable11{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable10{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable16{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr style='height:19px;'>
        <td class="maptable10"></td>
        <td class="maptable11"> Response Data Element</td>
        <td class="maptable11">PMIX Data Element</td>
        <td class="maptable11">FHIR Data Element</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" colspan="4">Routing Information</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="4"></td>
        <td class="maptable17">Response Date/Timestamp</td>
        <td class="maptable17">pmp:ReportExecutionDate <p></p> pmp:ReportExecutionTime</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-header-timestamp-extension)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Response Prescription Date Range (Start Date)</td>
        <td class="maptable17">pmp:ReportDateRangeBegin</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-response-prescription-period-extension - Period.start)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Response Prescription Date Range (End date)</td>
        <td class="maptable17">pmp:ReportDateRangeEnd</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-response-prescription-period-extension - Period.end)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Request ID</td>
        <td class="maptable17">n/a</td>
        <td class="maptable17">MessageHeader.response.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" colspan="4">Message Body</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="9">Patient</td>
        <td class="maptable17">Patient First Name</td>
        <td class="maptable17">nc:PersonGivenName</td>
        <td class="maptable17">Patient.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient Last Name</td>
        <td class="maptable17">nc:PersonSurName</td>
        <td class="maptable17">Patient.name.family</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient Date of Birth</td>
        <td class="maptable17">nc:Date</td>
        <td class="maptable17">Patient.birthdate</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient Gender</td>
        <td class="maptable17">PersonSexCode</td>
        <td class="maptable17">Patient.gender</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Patient Street Address</td>
        <td class="maptable17">StreetFullText</td>
        <td class="maptable17">Patient.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient City Address</td>
        <td class="maptable17">nc:LocationCityName</td>
        <td class="maptable17">Patient.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient State Code</td>
        <td class="maptable17">nc:LocationStateUSPostalServiceCode</td>
        <td class="maptable17">Patient.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Patient Zip Code</td>
        <td class="maptable17">nc:LocationPostalExtensionCod</td>
        <td class="maptable17">Patient.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">SSN*</td>
        <td class="maptable17">nc:IdentificationID</td>
        <td class="maptable17">Patient.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="12">Prescription</td>
        <td class="maptable17">Prescription Filled Date</td>
        <td class="maptable17">pmp:PrescriptionFilledDate</td>
        <td class="maptable17">MedicationDispense.whenPrepared</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescription Written Date</td>
        <td class="maptable17">nc:Date</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.authoredOn</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescription Number</td>
        <td class="maptable17">pmp:PrescriptionNumberText</td>
        <td class="maptable17">MedicationDispense.Identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Drug Name[1]</td>
        <td class="maptable17">pmp:DrugProductNameText</td>
        <td class="maptable17">MedicationDispense.medicationReference.code.coding.code.display</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Drug Strength[1]</td>
        <td class="maptable17">pmp:DrugStrengthText</td>
        <td class="maptable17">MedicationDispense.medicationReference.ingredient.strength</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Dosage Form[2]</td>
        <td class="maptable17">pmp:DrugUnitOfMeasureText</td>
        <td class="maptable17">MedicationDispense.medicationReference.form</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Drug Quantity</td>
        <td class="maptable17">pmp:DispensedQuantity</td>
        <td class="maptable17">MedicationDispense.quantity</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Days of Supply</td>
        <td class="maptable17">pmp:DaysSupplyCount</td>
        <td class="maptable17">MedicationDispense.daysSupply</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Refill Number</td>
        <td class="maptable17">pmp:DrugRefillNumberCount</td>
        <td class="maptable17">MedicationDispense.extension - (StructureDefinition-refill-number-extension)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Refills Authorized</td>
        <td class="maptable17">pmp:RefillsAuthorizedCount</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Partial Fill Indicator</td>
        <td class="maptable17">pmp:PartialFillIndicator</td>
        <td class="maptable17">MedicationDispense.type</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Method of Payment</td>
        <td class="maptable17">pmp:MethodOfPaymentCode</td>
        <td class="maptable17">MedicationDispense.note</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Drug</td>
        <td class="maptable17">Product ID Qualifier</td>
        <td class="maptable17">pmp:DrugNDCProductIdentifier</td>
        <td class="maptable17">MedicationDispense.medicationReference.code.coding.system</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Product ID</td>
        <td class="maptable17">IdentificationID</td>
        <td class="maptable17">MedicationDispense.medicationReference.code.coding.code</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable16" rowspan="6">Dispenser Organization</td>
        <td class="maptable17">Dispenser Organization Name (Facility)</td>
        <td class="maptable17">nc:OrganizationDoingBusinessAsName</td>
        <td class="maptable17">Organization.name</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Dispenser Organization Street Address</td>
        <td class="maptable17">nc:StreetFullText</td>
        <td class="maptable17">Organization.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Dispenser Organization City Address</td>
        <td class="maptable17">nc:LocationCityName</td>
        <td class="maptable17">Organization.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Dispenser Organization State Code</td>
        <td class="maptable17">nc:LocationStateUSPostalServiceCode</td>
        <td class="maptable17">Organization.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Dispenser Organization Zip Code</td>
        <td class="maptable17">nc:LocationPostalCode</td>
        <td class="maptable17">Organization.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Dispenser Organization Phone Number</td>
        <td class="maptable17">nc:TelephoneNumberFullID</td>
        <td class="maptable17">Organization.telecom</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Dispenser Organization (Pharmacy identifier)</td>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">nc:IdentificationID</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NCPDP Number*</td>
        <td class="maptable17">nc:IdentificationID</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NPI Number*</td>
        <td class="maptable17">nc:IdentificationID</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="6">Prescriber</td>
        <td class="maptable17">Prescriber First Name</td>
        <td class="maptable17">nc:PersonGivenName</td>
        <td class="maptable17">Practitioner.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescriber Last Name</td>
        <td class="maptable17">nc:PersonSurName</td>
        <td class="maptable17">Practitioner.name.family</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable17">Prescriber Street Address</td>
        <td class="maptable17">nc:StreetFullText</td>
        <td class="maptable17">Practitioner.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescriber City Address</td>
        <td class="maptable17">nc:LocationCityName</td>
        <td class="maptable17">Practitioner.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescriber State Code</td>
        <td class="maptable17">nc:LocationStateUSPostalServiceCode</td>
        <td class="maptable17">Practitioner.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Prescriber Zip Code</td>
        <td class="maptable17">LocationPostalCode</td>
        <td class="maptable17">Practitioner.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="4">Prescriber Identifier</td>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">IdentificationID</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NPI Number*</td>
        <td class="maptable17">IdentificationID</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">State License* Identifier</td>
        <td class="maptable17">IdentificationID</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">State of License*</td>
        <td class="maptable17">IdentificationID</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:42px;'>
        <td class="maptable17"></td>
        <td class="maptable17" colspan="3">* Conditionally required data elements have asterisks (*), meaning at least one data element is required within this category. For example, under Requesting Facility ID, one of the three data elements (DEA Number, NCPDP Number or NPI) is required.
        Similarly for Patient Identifier, either SSN or MedicareNumber should be used as allowed by law. Additional occurrences of Patient Identifier may use PatientAccountNumber of MedicalRecordIdentificationNumberEHR per the NCPDP Script implementation guide.</td>
      </tr>
    </tbody>
  </table>
</div>

