### Data Elements and Mappings

This section describes and identifies data elements that are used commonly in the data requests and responses and provides mappings of these data elements to FHIR. Based on environmental scans and prior work performed by ONC across a spectrum of implementations the following data was collected:

* Some existing EHR implementations use NCPDP SCRIPT 2017071 (specifically RxHistoryRequest/RxHistoryResponse) to request and receive data from PDMP Responders (Intermediaries or State systems).
* PDMP systems exchange data using PMIX/NIEM standard.
* Most of the EHRs use intermediaries to request data from one or more State systems and send NCPDP based requests and receive responses in NCPDP format.

Since the community understands  NCPDP data elements, a mapping of NCPDP Request and Response data elements to FHIR Resources has been created and specified below. This allows organizations already familiar with NCPDP to use the mapping provided in developing their FHIR Resources and APIs. Similarly mapping from PMIX/NIEM data elements to FHIR is also provided for systems using PMIX/NIEM to map their data to FHIR and expose them through appropriate APIs.

#### NCPDP Mappings for  Request
{:.no_toc}

This section includes the minimal mapping for the  request from an EHR to a state  using NCPDP.

[MedicationRequest]({{ site.data.fhir.path }}medicationrequest-mappings.html#script10.6): includes a full mapping for medicationRequest resource to SCRIPT 10.6


<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable17{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable18{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#262626;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable12{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable15{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable112{background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable11{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable10{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable111{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable14{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable13{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable110{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:left;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable16{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable19{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable113{background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr style='height:20px;'>
        <td class="maptable10">
        </td>
        <td class="maptable11"> Request Data Element</td>
        <td class="maptable11">NCPDP Data Element</td>
        <td class="maptable12">FHIR Data Element</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable13">
        </td>
        <td class="maptable14">Routing Information</td>
        <td class="maptable14">
        </td>
        <td class="maptable15">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="4">Request</td>
        <td class="maptable17">Requester</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Prescriber/NonVeterinarian/Name</td>
        <td class="maptable17">Practitioner.name</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Requester Role</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/RequestorRole</td>
        <td class="maptable17">PractitionerRole.code</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Request ID</td>
        <td class="maptable17">Message/Header/MessageID</td>
        <td class="maptable17">MessageHeader.id</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable18">Request date/ timestamp</td>
        <td class="maptable18">&ltMessage/Header/SentTime</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-header-timestamp-extension)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Requester Identifier</td>
        <td class="maptable17">NPI Number*</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Prescriber/NonVeterinarian/Identification/NPI</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Prescriber/NonVeterinarian/Identification/DEANumber</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Requesting Facility ID</td>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Facility/Identification/DEANumber</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NCPDP Number*</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Facility/Identification/NCPDPID</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NPI*</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Facility/Identification/NPI</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:28px;'>
        <td class="maptable16" rowspan="3">Requesting Facility</td>
        <td class="maptable17">Facility Name</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Facility/FacilityName</td>
        <td class="maptable17">Organization.name</td>
      </tr>
      <tr style='height:28px;'>
        <td class="maptable17">State code of Requesting Facility</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Facility/Address/StateProvince</td>
        <td class="maptable17">Organization.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable19">Message Body</td>
        <td class="maptable110">
        </td>
        <td class="maptable111">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Patient</td>
        <td class="maptable17">First Name</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Patient/HumanPatient/Name/FirstName</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Patient/HumanPatient/Name/LastName</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.name.family</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Date of Birth</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/Patient/HumanPatient/DateOfBirth</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.birthdate</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Request Prescription Date Range</td>
        <td class="maptable17">Start Date</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/RequestedDates/StartDate;</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.validityPeriod</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">End Date</td>
        <td class="maptable17">Message/Body/RxHistoryRequest/RequestedDates/EndDate;</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.validityPeriod</td>
      </tr>
      <tr style='height:40px;'>
        <td class="maptable112">
        </td>
        <td class="maptable113" colspan="3">* Conditionally required data elements have asterisks (*), meaning at least one data element is required within this category. For example, under Requesting Facility ID, one of the three data elements (DEA Number, NCPDP Number or NPI) is required.</td>
      </tr>
    </tbody>
  </table>
</div>



#### NCPDP Mappings for  Response
{:.no_toc}

This section includes the minimal mapping for the  response from a state  to an EHR using NCPDP.

<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable215{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable22{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable213{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable27{border-bottom:1px SOLID transparent;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable211{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable25{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable21{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable26{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable210{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable28{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable217{background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:top;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable216{background-color:#ffffff;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable24{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable20{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable23{border-bottom:1px SOLID transparent;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable29{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable214{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable212{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr style='height:19px;'>
        <td class="maptable20">
        </td>
        <td class="maptable21"> Response Data Element</td>
        <td class="maptable21">NCPDP Data Element</td>
        <td class="maptable22">FHIR Data Element</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable23">
        </td>
        <td class="maptable24">Routing Information</td>
        <td class="maptable25">
        </td>
        <td class="maptable26">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable27">
        </td>
        <td class="maptable28">Response Date/Timestamp</td>
        <td class="maptable29">Message/Header/SentTime</td>
        <td class="maptable29">MessageHeader.extension (StructureDefinition-header-timestamp-extension) </td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable27">
        </td>
        <td class="maptable28">Response Prescription Date Range (Start Date)</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/RequestedDates/StartDate/td>
        <td class="maptable29">MessageHeader.extension (StructureDefinition-response-prescription-period-extension - Period.start)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable23">
        </td>
        <td class="maptable28">Response Prescription Date Range (End date)</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/RequestedDates/EndDate</td>
        <td class="maptable29">MessageHeader.extension (StructureDefinition-response-prescription-period-extension - Period.end)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable23">
        </td>
        <td class="maptable28">Request ID</td>
        <td class="maptable210">Message/Header/RelatesToMessageID</td>
        <td class="maptable29">MessageHeader.response.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable211">
        </td>
        <td class="maptable24">Message Body</td>
        <td class="maptable212">
        </td>
        <td class="maptable213">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="8">Patient</td>
        <td class="maptable28">Patient First Name</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/Patient/HumanPatient/Name/FirstName</td>
        <td class="maptable29">Patient.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Last Name</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/Patient/HumanPatient/Name/LastName</td>
        <td class="maptable29">Patient.name.family</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Date of Birth</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/Patient/HumanPatient/DateOfBirth</td>
        <td class="maptable29">Patient.birthdate</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Gender</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/Patient/HumanPatient/Gender</td>
        <td class="maptable29">Patient.gender</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Patient Street Address</td>
        <td class="maptable215">Message/Body/RxHistoryResponse/Patient/HumanPatient/Address/AddressLine1
Message/Body/RxHistoryResponse/Patient/HumanPatient/Address/AddressLine2
</td>
        <td class="maptable29">Patient.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient City Address</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/Patient/HumanPatient/Address/City</td>
        <td class="maptable29">Patient.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient State Code</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/Patient/HumanPatient/Addresss/StateProvince</td>
        <td class="maptable29">Patient.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Zip Code</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/Patient/HumanPatient/Address/PostalCode</td>
        <td class="maptable29">Patient.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214">Patient Identifier</td>
        <td class="maptable28">SSN*</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/Patient/HumanPatient/Identification/SocialSecurity</td>
        <td class="maptable29">Patient.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="12">Prescription</td>
        <td class="maptable28">Prescription Filled Date</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/LastFillDate</td>
        <td class="maptable29">MedicationDispense.whenPrepared</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescription Written Date</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/WrittenDate</td>
        <td class="maptable29">MedicationDispense.authorizingPrescription.authoredOn</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescription Number</td>
        <td class="maptable29">
Message/Body/RxHistoryResponse/MedicationDispensed/HistorySource/SourceReference</td>
        <td class="maptable29">MedicationDispense.Identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Drug Name[1]</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/DrugDescription</td>
        <td class="maptable29">MedicationDispense.medicationReference.code.coding.code.dispay</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Drug Strength[1]</td>
        <td class="maptable215">Message/Body/RxHistoryResponse/MedicationDispensed/DrugCoded/Strength</td>
        <td class="maptable29">MedicationDispense.medicationReference.ingredient.strength</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dosage Form[2]</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/Quantity/QuantityUnitOfMeasure</td>
        <td class="maptable29">MedicationDispense.medicationReference.form</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Drug Quantity</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/Quantity/Value</td>
        <td class="maptable29">MedicationDispense.quantity</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Days of Supply</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/DaysSupply</td>
        <td class="maptable29">MedicationDispense.daysSupply</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Refill Number</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/HistorySource/FillNumber</td>
        <td class="maptable29">MedicationDispense.type</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Refills Authorized</td>
        <td class="maptable29">FillNumber - 1 + Message/Body/RxHistoryResponse/MedicationDispensed/RefillsRemaining
        <br/><i>approximation only. not directly represented in RxHistoryResponse</i></td>
        <td class="maptable29">MedicationDispense.authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Partial Fill Indicator </td>
        <td class="maptable29"><em>&lt;FillStatus&gt;</em></td>
        <td class="maptable29">MedicationDispense.type</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Method of Payment </td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/HistorySource/PaymentType</td>
        <td class="maptable29">MedicationDispense.note<br/><i>are we including this in our response?</i></td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="2">Drug</td>
        <td class="maptable28">Product ID Qualifier</td>
        <td class="maptable215">Message/Body/RxHistoryResponse/MedicationDispensed/DrugCoded/ProductCode/Qualifier</td>
        <td class="maptable29">MedicationDipense.medicationReference.code.coding.system</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Product ID</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/DrugCoded/ProductCode/Code</td>
        <td class="maptable29">MedicationDispense.medicationReference.code.coding.code</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable214" rowspan="6">Dispenser Organization</td>
        <td class="maptable28">Dispenser Organization Name (Facility)</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy/BusinessName</td>
        <td class="maptable29">Organization.name</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Dispenser Organization Street Address</td>
        <td class="maptable215">Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy/Address/AddressLine1<br/>Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy/Address/AddressLine2</td>
        <td class="maptable29">Organization.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization City Address</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy/Address/City</td>
        <td class="maptable29">Organization.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization State Code</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy/Address/StateProvince</td>
        <td class="maptable29">Organization.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization Zip Code</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy/Address/PostalCode</td>
        <td class="maptable29">Organization.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization Phone Number</td>
        <td class="maptable215">Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy/CommunicationNumbers/PrimaryTelephone</td>
        <td class="maptable29">Organization.telecom</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="3">Dispenser Organization (Pharmacy identifier)</td>
        <td class="maptable28">DEA Number*</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy/Identification/DEANumber</td>
        <td class="maptable29">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">NCPDP Number*  </td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy/Identification/NCPDPID</td>
        <td class="maptable29">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">NPI Number*</td>
        <td class="maptable29">Message/Body/RxHistoryResponse/MedicationDispensed/Pharmacy/Identification/NPI</td>
        <td class="maptable29">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="6">Prescriber</td>
        <td class="maptable28">Prescriber First Name</td>
        <td class="maptable29">&lt;FirstName&gt;</td>
        <td class="maptable29">Practitioner.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber Last Name</td>
        <td class="maptable29">&lt;LastName&gt;</td>
        <td class="maptable29">Practitioner.name.family</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Prescriber Street Address</td>
        <td class="maptable215">&lt;AddressLine&gt; &lt;AddressLine2&gt;</td>
        <td class="maptable29">Practitioner.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber City Address</td>
        <td class="maptable29">&lt;City&gt;</td>
        <td class="maptable29">Practitioner.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber State Code</td>
        <td class="maptable29">&lt;State&gt;</td>
        <td class="maptable29">Practitioner.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber Zip Code</td>
        <td class="maptable29">&lt;ZipCode&gt;</td>
        <td class="maptable29">Practitioner.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="4">Prescriber Identifier</td>
        <td class="maptable28">DEA Number*</td>
        <td class="maptable29">&lt;DEANumber&gt;</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">NPI Number*</td>
        <td class="maptable29">&lt;NPI&gt;</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">State License* Identifier</td>
        <td class="maptable29">NA</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">State of License*</td>
        <td class="maptable29">NA</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:42px;'>
        <td class="maptable216">
        </td>
        <td class="maptable217" colspan="3">* Conditionally required data elements have asterisks (*), meaning at least one data element is required within this category. For example, under Requesting Facility ID, one of the three data elements (DEA Number, NCPDP Number or NPI) is required.
        </td>
      </tr>
    </tbody>
  </table>
</div>


#### PMIX Mappings for  Request

This section includes the minimal mapping for the  request from an EHR to a state  using PMIX.

<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable17{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable18{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#262626;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable12{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable15{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable112{background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable11{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable10{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable111{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable14{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable13{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable110{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:left;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable16{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable19{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable113{background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr style='height:20px;'>
        <td class="maptable10">
        </td>
        <td class="maptable11"> Request Data Element</td>
        <td class="maptable11">PMIX Data Element</td>
        <td class="maptable12">FHIR Data Element</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable13">
        </td>
        <td class="maptable14">Routing Information</td>
        <td class="maptable14">
        </td>
        <td class="maptable15">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="4">Request</td>
        <td class="maptable17">Requester</td>
        <td class="maptable17">&lt;pmix:Requester&gt;</td>
        <td class="maptable17">Practitioner.name</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Requester Role</td>
        <td class="maptable17">&lt;pmix:RequesterRole&gt;</td>
        <td class="maptable17">PractitionerRole.code</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Request ID</td>
        <td class="maptable17">&lt;pmix:RequestID&gt;</td>
        <td class="maptable17">MessageHeader.id</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable18">Request date/ timestamp</td>
        <td class="maptable18">n/a</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-header-timestamp-extension) </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Requester Identifier</td>
        <td class="maptable17">NPI Number*</td>
        <td class="maptable17">&lt;nc:IdentificationID&gt;</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">&lt;nc:IdentificationID&gt;</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Requesting Facility ID</td>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">&lt;nc:IdentificationID&gt;</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NCPDP Number*</td>
        <td class="maptable17">&lt;nc:IdentificationID&gt;</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NPI*</td>
        <td class="maptable17">&lt;nc:IdentificationID&gt;</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:28px;'>
        <td class="maptable16" rowspan="3">Requesting Facility</td>
        <td class="maptable17">Facility Name</td>
        <td class="maptable17">&lt;nc:OrganizationDoingBusinessAsName&gt;</td>
        <td class="maptable17">Organization.name</td>
      </tr>
      <tr style='height:28px;'>
        <td class="maptable17">State code of Requesting Facility</td>
        <td class="maptable17">&lt;nc:LocationStateUSPostalServiceCode&gt;</td>
        <td class="maptable17">Organization.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable19">Message Body</td>
        <td class="maptable110">
        </td>
        <td class="maptable111">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Patient</td>
        <td class="maptable17">First Name</td>
        <td class="maptable17">&lt;nc:PersonGivenName&gt;</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">&lt;nc:PersonSurName&gt;</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.name.family</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Date of Birth</td>
        <td class="maptable17">&lt;nc:Date&gt;</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.birthdate</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Request Prescription Date Range</td>
        <td class="maptable17">Start Date</td>
        <td class="maptable17">&lt;pmp:RequestPrescriptionDateRangeBegin&gt;</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.validityPeriod</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">End Date</td>
        <td class="maptable17">&lt;pmp:RequestPrescriptionDateRangeEnd&gt;</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.validityPeriod</td>
      </tr>
      <tr style='height:40px;'>
        <td class="maptable112">
        </td>
        <td class="maptable113" colspan="3">* Conditionally required data elements have asterisks (*), meaning at least one data element is required within this category. For example, under Requesting Facility ID, one of the three data elements (DEA Number, NCPDP Number or NPI) is required.</td>
      </tr>
    </tbody>
  </table>
</div>


#### PMIX Mappings for  Response

This section includes the minimal mapping for the  response from a state  to an EHR using PMIX.

<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable215{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable22{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable213{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable27{border-bottom:1px SOLID transparent;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable211{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable25{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable21{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable26{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable210{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable28{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable217{background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:top;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable216{background-color:#ffffff;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable24{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable20{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable23{border-bottom:1px SOLID transparent;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable29{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable214{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable212{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr style='height:19px;'>
        <td class="maptable20">
        </td>
        <td class="maptable21"> Response Data Element</td>
        <td class="maptable21">PMIX Data Element</td>
        <td class="maptable22">FHIR Data Element</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable23">
        </td>
        <td class="maptable24">Routing Information</td>
        <td class="maptable25">
        </td>
        <td class="maptable26">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable27">
        </td>
        <td class="maptable28">Response Date/Timestamp</td>
        <td class="maptable29">&lt;pmp:ReportExecutionDate&gt;&lt;pmp:ReportExecutionTime&gt;</td>
        <td class="maptable29">MessageHeader.extension (StructureDefinition-header-timestamp-extension) </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable27">
        </td>
        <td class="maptable28">Response Prescription Date Range (Start Date)</td>
        <td class="maptable29">&lt;pmp:ReportDateRangeBegin&gt;</td>
        <td class="maptable29">MessageHeader.extension (StructureDefinition-response-prescription-period-extension - Period.start)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable23">
        </td>
        <td class="maptable28">Response Prescription Date Range (End date)</td>
        <td class="maptable29">&lt;pmp:ReportDateRangeEnd&gt;</td>
        <td class="maptable29">MessageHeader.extension (StructureDefinition-response-prescription-period-extension - Period.end)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable23">
        </td>
        <td class="maptable28">Request ID</td>
        <td class="maptable210">n/a</td>
        <td class="maptable29">MessageHeader.response.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable211">
        </td>
        <td class="maptable24">Message Body</td>
        <td class="maptable212">
        </td>
        <td class="maptable213">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="8">Patient</td>
        <td class="maptable28">Patient First Name</td>
        <td class="maptable29">&lt;nc:PersonGivenName&gt;</td>
        <td class="maptable29">Patient.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Last Name</td>
        <td class="maptable29">&lt;nc:PersonSurName&gt;</td>
        <td class="maptable29">Patient.name.family</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Date of Birth</td>
        <td class="maptable29">&lt;nc:Date&gt;</td>
        <td class="maptable29">Patient.birthdate</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Gender</td>
        <td class="maptable29">&lt;PersonSexCode&gt;</td>
        <td class="maptable29">Patient.gender</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Patient Street Address</td>
        <td class="maptable215">&lt;StreetFullText&gt;</td>
        <td class="maptable29">Patient.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient City Address</td>
        <td class="maptable29">&lt;nc:LocationCityName&gt;</td>
        <td class="maptable29">Patient.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient State Code</td>
        <td class="maptable29">&lt;nc:LocationStateUSPostalServiceCode&gt;</td>
        <td class="maptable29">Patient.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Zip Code</td>
        <td class="maptable29">&lt;nc:LocationPostalExtensionCod&gt;</td>
        <td class="maptable29">Patient.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214">Patient Identifier</td>
        <td class="maptable28">SSN*</td>
        <td class="maptable29">&lt;nc:IdentificationID&gt;</td>
        <td class="maptable29">Patient.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="12">Prescription</td>
        <td class="maptable28">Prescription Filled Date</td>
        <td class="maptable29">&lt;pmp:ReportDateRangeBegin&gt;&lt;pmp:ReportDateRangeEnd&gt;</td>
        <td class="maptable29">MedicationDispense.whenPrepared</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescription Written Date</td>
        <td class="maptable29">&lt;nc:Date&gt;</td>
        <td class="maptable29">MedicationDispense.authorizingPrescription.authoredOn</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescription Number</td>
        <td class="maptable29">&lt;pmp:PrescriptionNumberText&gt;</td>
        <td class="maptable29">MedicationDispense.Identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Drug Name[1]</td>
        <td class="maptable29">&lt;pmp:DrugProductNameText&gt;</td>
        <td class="maptable29">MedicationDispense.medicationReference.code.coding.code.dispay</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Drug Strength[1]</td>
        <td class="maptable215">&lt;pmp:DrugStrengthText&gt;</td>
        <td class="maptable29">MedicationDispense.medicationReference.ingredient.strength</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dosage Form[2]</td>
        <td class="maptable29">&lt;pmp:DrugUnitOfMeasureText&gt;</td>
        <td class="maptable29">MedicationDispense.medicationReference.form</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Drug Quantity</td>
        <td class="maptable29">&lt;pmp:DispensedQuantity&gt;</td>
        <td class="maptable29">MedicationDispense.quantity </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Days of Supply</td>
        <td class="maptable29">&lt;pmp:DaysSupplyCount&gt;</td>
        <td class="maptable29">MedicationDispense.daysSupply</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Refill Number</td>
        <td class="maptable29">&lt;pmp:DrugRefillNumberCount&gt;</td>
        <td class="maptable29">MedicationDispense.extension - (StructureDefinition-refill-number-extension)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Refills Authorized</td>
        <td class="maptable29">&lt;pmp:RefillsAuthorizedCount&gt;</td>
        <td class="maptable29">MedicationDispense.authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Partial Fill Indicator </td>
        <td class="maptable29">&lt;pmp:PartialFillIndicator&gt;</td>
        <td class="maptable29">MedicationDispense.type</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Method of Payment</td>
        <td class="maptable29">&lt;pmp:MethodOfPaymentCode&gt;</td>
        <td class="maptable29">MedicationDispense.note</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="2">Drug</td>
        <td class="maptable28">Product ID Qualifier</td>
        <td class="maptable215">&lt;pmp:DrugCPDProductIdentifier&gt;&lt;pmp:DrugDINProductIdentifier&gt;</br>&lt;pmp:DrugHRIProductIdentifier&gt;&lt;pmp:pmp:DrugNDCProductIdentifier&gt;</br>&lt;pmp:DrugUPCProductIdentifie&gt;&lt;pmp:DrugUPNProductIdentifier&gt;</td>
        <td class="maptable29">MedicationDipense.medicationReference.code.coding.system</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Product ID</td>
        <td class="maptable29">&lt;IdentificationID&gt;</td>
        <td class="maptable29">MedicationDipense.medicationReference.code.coding.code</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable214" rowspan="6">Dispenser Organization</td>
        <td class="maptable28">Dispenser Organization Name (Facility)</td>
        <td class="maptable29">&lt;nc:OrganizationDoingBusinessAsName&gt;</td>
        <td class="maptable29">Organization.name</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Dispenser Organization Street Address</td>
        <td class="maptable215">&lt;nc:StreetFullText&gt;</td>
        <td class="maptable29">Organization.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization City Address</td>
        <td class="maptable29">&lt;nc:LocationCityName&gt;</td>
        <td class="maptable29">Organization.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization State Code</td>
        <td class="maptable29">&lt;nc:LocationStateUSPostalServiceCode&gt;</td>
        <td class="maptable29">Organization.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization Zip Code</td>
        <td class="maptable29">&lt;nc:LocationPostalCode&gt;</td>
        <td class="maptable29">Organization.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization Phone Number</td>
        <td class="maptable215">&lt;nc:TelephoneNumberFullID&gt;</td>
        <td class="maptable29">Organization.telecom</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="3">Dispenser Organization (Pharmacy identifier)</td>
        <td class="maptable28">DEA Number*</td>
        <td class="maptable29">&lt;nc:IdentificationIDgt;</td>
        <td class="maptable29">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">NCPDP Number*  </td>
        <td class="maptable29">&lt;nc:IdentificationID&gt;</td>
        <td class="maptable29">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">NPI Number*</td>
        <td class="maptable29">&lt;nc:IdentificationID&gt;</td>
        <td class="maptable29">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="6">Prescriber</td>
        <td class="maptable28">Prescriber First Name</td>
        <td class="maptable29">&lt;nc:PersonGivenName&gt;</td>
        <td class="maptable29">Practitioner.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber Last Name</td>
        <td class="maptable29">&lt;nc:PersonSurName&gt;</td>
        <td class="maptable29">Practitioner.name.family</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Prescriber Street Address</td>
        <td class="maptable215">&lt;nc:StreetFullText&gt;</td>
        <td class="maptable29">Practitioner.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber City Address</td>
        <td class="maptable29">&lt;nc:LocationCityName&gt;</td>
        <td class="maptable29">Practitioner.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber State Code</td>
        <td class="maptable29">&lt;nc:LocationStateUSPostalServiceCode&gt;</td>
        <td class="maptable29">Practitioner.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber Zip Code</td>
        <td class="maptable29">&lt;LocationPostalCode&gt;</td>
        <td class="maptable29">Practitioner.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="4">Prescriber Identifier</td>
        <td class="maptable28">DEA Number*</td>
        <td class="maptable29">&lt;IdentificationID&gt;</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">NPI Number*</td>
        <td class="maptable29">&lt;IdentificationID&gt;</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">State License* Identifier</td>
        <td class="maptable29">IdentificationID</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">State of License*</td>
        <td class="maptable29">IdentificationID</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:42px;'>
        <td class="maptable216">
        </td>
        <td class="maptable217" colspan="3">* Conditionally required data elements have asterisks (*), meaning at least one data element is required within this category. For example, under Requesting Facility ID, one of the three data elements (DEA Number, NCPDP Number or NPI) is required.
        Similarly for Patient Identifier, either SSN or MedicareNumber should be used as allowed by law. Additional occurrences of Patient Identifier may use PatientAccountNumber of MedicalRecordIdentificationNumberEHR per the NCPDP Script implementation guide.</td>
      </tr>
    </tbody>
  </table>
</div>


#### ASAP 2.1A Mappings for  Request

This section includes the minimal mapping for the  request from an EHR to a state  using ASAP 2.1A.

<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable17{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable18{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#262626;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable12{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable15{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable112{background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable11{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable10{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable111{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable14{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable13{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable110{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:left;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable16{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable19{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable113{background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr style='height:20px;'>
        <td class="maptable10">
        </td>
        <td class="maptable11"> Request Data Element</td>
        <td class="maptable11">ASAP Data Element</td>
        <td class="maptable12">FHIR Data Element</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable13">
        </td>
        <td class="maptable14">Routing Information</td>
        <td class="maptable14">
        </td>
        <td class="maptable15">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="4">Request</td>
        <td class="maptable17">Requester</td>
        <td class="maptable17">RequesterName</td>
        <td class="maptable17">Practitioner.name</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Requester Role</td>
        <td class="maptable17">RequesterRole</td>
        <td class="maptable17">PractitionerRole.code</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Request ID</td>
        <td class="maptable17">RequestID</td>
        <td class="maptable17">MessageHeader.id</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable18">Request date/ timestamp</td>
        <td class="maptable18">dateTime</td>
        <td class="maptable17">MessageHeader.extension (StructureDefinition-header-timestamp-extension) </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Requester Identifier</td>
        <td class="maptable17">NPI Number*</td>
        <td class="maptable17">NationalProviderID</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">DEANumber</td>
        <td class="maptable17">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Requesting Facility ID</td>
        <td class="maptable17">DEA Number*</td>
        <td class="maptable17">DEANumber</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">NPI</td>
        <td class="maptable17">NationalProviderID</td>
        <td class="maptable17">Organization.identifier</td>
      </tr>
      <tr style='height:28px;'>
        <td class="maptable16" rowspan="3">Requesting Facility</td>
        <td class="maptable17">Facility Name</td>
        <td class="maptable17">FacilityName</td>
        <td class="maptable17">Organization.name</td>
      </tr>
      <tr style='height:28px;'>
        <td class="maptable17">State code of Requesting Facility</td>
        <td class="maptable17">LocationStateUSPostalServiceCode&gt;</td>
        <td class="maptable17">Organization.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable19">Message Body</td>
        <td class="maptable110">
        </td>
        <td class="maptable111">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="3">Patient</td>
        <td class="maptable17">First Name</td>
        <td class="maptable17">GivenName</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Last Name</td>
        <td class="maptable17">SurName</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.name.family</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">Date of Birth</td>
        <td class="maptable17">BirthDate</td>
        <td class="maptable17">MedicationDispense.subject(Patient) --> Patient.birthdate</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable16" rowspan="2">Request Prescription Date Range</td>
        <td class="maptable17">Start Date</td>
        <td class="maptable17">DateRangeBegin</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.validityPeriod</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable17">End Date</td>
        <td class="maptable17">DateRangeEnd</td>
        <td class="maptable17">MedicationDispense.authorizingPrescription.dispenseRequest.validityPeriod</td>
      </tr>
      <tr style='height:40px;'>
        <td class="maptable112">
        </td>
        <td class="maptable113" colspan="3">* Conditionally required data elements have asterisks (*), meaning at least one data element is required within this category. For example, under Requesting Facility ID, one of the three data elements (DEA Number, NCPDP Number or NPI) is required.</td>
      </tr>
    </tbody>
  </table>
</div>


#### ASAP 2.1A Mappings for  Response

This section includes the minimal mapping for the  response from a state  to an EHR using ASAP 2.1A.

<style type="text/css">.ritz .waffle a { color: inherit; }.ritz .waffle .maptable215{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable22{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable213{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable27{border-bottom:1px SOLID transparent;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable211{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable25{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable21{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;font-weight:bold;color:#ffffff;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable26{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable210{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable28{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable217{background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:top;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable216{background-color:#ffffff;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable24{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:center;font-weight:bold;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable20{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#4f81bd;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable23{border-bottom:1px SOLID transparent;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable29{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable214{border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#c6d9f0;text-align:center;color:#000000;font-family:'Calibri',Arial;font-size:12pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0px 3px 0px 3px;}.ritz .waffle .maptable212{border-bottom:1px SOLID #000000;border-right:1px SOLID transparent;background-color:#c6d9f0;text-align:left;color:#000000;font-family:'Calibri',Arial;font-size:11pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0px 3px 0px 3px;}</style>
<div class="ritz grid-container" dir="ltr">
  <table class="waffle" cellspacing="0" cellpadding="0">
    <tbody>
      <tr style='height:19px;'>
        <td class="maptable20">
        </td>
        <td class="maptable21"> Response Data Element</td>
        <td class="maptable21">PMIX Data Element</td>
        <td class="maptable22">FHIR Data Element</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable23">
        </td>
        <td class="maptable24">Routing Information</td>
        <td class="maptable25">
        </td>
        <td class="maptable26">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable27">
        </td>
        <td class="maptable28">Response Date/Timestamp</td>
        <td class="maptable29">ResponseDate</td>
        <td class="maptable29">MessageHeader.extension (StructureDefinition-header-timestamp-extension) </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable27">
        </td>
        <td class="maptable28">Response Prescription Date Range (Start Date)</td>
        <td class="maptable29">EffectiveDate</td>
        <td class="maptable29">MessageHeader.extension (StructureDefinition-response-prescription-period-extension - Period.start)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable23">
        </td>
        <td class="maptable28">Response Prescription Date Range (End date)</td>
        <td class="maptable29">ExpirationDate</td>
        <td class="maptable29">MessageHeader.extension (StructureDefinition-response-prescription-period-extension - Period.end)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable23">
        </td>
        <td class="maptable28">Request ID</td>
        <td class="maptable210">RequestID</td>
        <td class="maptable29">MessageHeader.response.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable211">
        </td>
        <td class="maptable24">Message Body</td>
        <td class="maptable212">
        </td>
        <td class="maptable213">
        </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="8">Patient</td>
        <td class="maptable28">Patient First Name</td>
        <td class="maptable29">GivenName</td>
        <td class="maptable29">Patient.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Last Name</td>
        <td class="maptable29">SurName</td>
        <td class="maptable29">Patient.name.family</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Date of Birth</td>
        <td class="maptable29">BirthDate</td>
        <td class="maptable29">Patient.birthdate</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Gender</td>
        <td class="maptable29">Gender</td>
        <td class="maptable29">Patient.gender</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Patient Street Address</td>
        <td class="maptable215">StreetAddress</td>
        <td class="maptable29">Patient.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient City Address</td>
        <td class="maptable29">City</td>
        <td class="maptable29">Patient.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient State Code</td>
        <td class="maptable29">LocationStateUSPostalServiceCode</td>
        <td class="maptable29">Patient.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Patient Zip Code</td>
        <td class="maptable29">LocationPostalCode</td>
        <td class="maptable29">Patient.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214">Patient Identifier</td>
        <td class="maptable28">SSN*</td>
        <td class="maptable29">SSN</td>
        <td class="maptable29">Patient.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="12">Prescription</td>
        <td class="maptable28">Prescription Filled Date</td>
        <td class="maptable29">DispenseDate</td>
        <td class="maptable29">MedicationDispense.whenPrepared</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescription Written Date</td>
        <td class="maptable29">WrittenDate</td>
        <td class="maptable29">MedicationDispense.authorizingPrescription.authoredOn</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescription Number</td>
        <td class="maptable29">RxSerialNumber</td>
        <td class="maptable29">MedicationDispense.Identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Drug Name[1]</td>
        <td class="maptable29">DrugName</td>
        <td class="maptable29">MedicationDispense.medicationReference.code.coding.code.dispay</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Drug Strength[1]</td>
        <td class="maptable215">Strength</td>
        <td class="maptable29">MedicationDispense.medicationReference.ingredient.strength</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dosage Form[2]</td>
        <td class="maptable29">DosageForm</td>
        <td class="maptable29">MedicationDispense.medicationReference.form</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Drug Quantity</td>
        <td class="maptable29">Quantity</td>
        <td class="maptable29">MedicationDispense.quantity </td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Days of Supply</td>
        <td class="maptable29">DaysSupply</td>
        <td class="maptable29">MedicationDispense.daysSupply</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Refill Number</td>
        <td class="maptable29">FillNumber</td>
        <td class="maptable29">MedicationDispense.extension - (StructureDefinition-refill-number-extension)</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Refills Authorized</td>
        <td class="maptable29">RefillsAuthorized</td>
        <td class="maptable29">MedicationDispense.authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Partial Fill Indicator </td>
        <td class="maptable29">PartialFillIndicator</td>
        <td class="maptable29">MedicationDispense.type</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Method of Payment</td>
        <td class="maptable29">PaymentType</td>
        <td class="maptable29">MedicationDispense.note</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="2">Drug</td>
        <td class="maptable28">Product ID Qualifier</td>
        <td class="maptable215">ProductIDQualifier</td>
        <td class="maptable29">MedicationDipense.medicationReference.code.coding.system</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Product ID</td>
        <td class="maptable29">ProductID</td>
        <td class="maptable29">MedicationDipense.medicationReference.code.coding.code</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable214" rowspan="6">Dispenser Organization</td>
        <td class="maptable28">Dispenser Organization Name (Facility)</td>
        <td class="maptable29">PharmacyName</td>
        <td class="maptable29">Organization.name</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Dispenser Organization Street Address</td>
        <td class="maptable215">StreetAddress</td>
        <td class="maptable29">Organization.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization City Address</td>
        <td class="maptable29">City</td>
        <td class="maptable29">Organization.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization State Code</td>
        <td class="maptable29">LocationStateUSPostalServiceCode</td>
        <td class="maptable29">Organization.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization Zip Code</td>
        <td class="maptable29">LocationPostalCode</td>
        <td class="maptable29">Organization.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Dispenser Organization Phone Number</td>
        <td class="maptable215">Phone</td>
        <td class="maptable29">Organization.telecom</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="1">Dispenser Organization (Pharmacy identifier)</td>
        <td class="maptable28">DEA Number*</td>
        <td class="maptable29">DEANumber</td>
        <td class="maptable29">Organization.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="6">Prescriber</td>
        <td class="maptable28">Prescriber First Name</td>
        <td class="maptable29">GivenName</td>
        <td class="maptable29">Practitioner.name.given</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber Last Name</td>
        <td class="maptable29">SurName</td>
        <td class="maptable29">Practitioner.name.family</td>
      </tr>
      <tr style='height:32px;'>
        <td class="maptable28">Prescriber Street Address</td>
        <td class="maptable215">StreetAddress</td>
        <td class="maptable29">Practitioner.address.line</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber City Address</td>
        <td class="maptable29">City</td>
        <td class="maptable29">Practitioner.address.city</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber State Code</td>
        <td class="maptable29">LocationStateUSPostalServiceCode</td>
        <td class="maptable29">Practitioner.address.state</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">Prescriber Zip Code</td>
        <td class="maptable29">LocationPostalCode</td>
        <td class="maptable29">Practitioner.address.postalCode</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable214" rowspan="4">Prescriber Identifier</td>
        <td class="maptable28">DEA Number*</td>
        <td class="maptable29">DEANumber</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">NPI Number*</td>
        <td class="maptable29">NPI</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">State License* Identifier</td>
        <td class="maptable29">StateLicenseNumber</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:20px;'>
        <td class="maptable28">State of License*</td>
        <td class="maptable29">Location</td>
        <td class="maptable29">Practitioner.identifier</td>
      </tr>
      <tr style='height:42px;'>
        <td class="maptable216">
        </td>
        <td class="maptable217" colspan="3">* Conditionally required data elements have asterisks (*), meaning at least one data element is required within this category. For example, under Requesting Facility ID, one of the three data elements (DEA Number, NCPDP Number or NPI) is required.
        </td>
      </tr>
    </tbody>
  </table>
</div>



<br/>

