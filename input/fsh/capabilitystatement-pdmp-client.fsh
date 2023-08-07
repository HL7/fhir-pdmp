Instance: pdmp-client
InstanceOf: CapabilityStatement
Usage: #definition
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t\n\t\t\t<ul id=\"markdown-toc\">\n\t\t\t\t<li>\n\t\t\t\t\t<a href=\"#conformance-requirements-for-the-pdmp-client\" id=\"markdown-toc-conformance-requirements-for-the-pdmp-client\">Conformance requirements for the PDMP Client</a>\n\t\t\t\t\t<ul>\n\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t<a href=\"#behavior-1\" id=\"markdown-toc-behavior-1\">Behavior</a>\n\t\t\t\t\t\t</li>\n\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t<a href=\"#security-1\" id=\"markdown-toc-security-1\">Security</a>\n\t\t\t\t\t\t</li>\n\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t<a href=\"#resource--details-1\" id=\"markdown-toc-resource--details-1\">Resource  Details:</a>\n\t\t\t\t\t\t\t<ul>\n\t\t\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t\t\t<a href=\"#medication-1\" id=\"markdown-toc-medication-1\">1. Medication</a>\n\t\t\t\t\t\t\t\t</li>\n\t\t\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t\t\t<a href=\"#medicationadministration-1\" id=\"markdown-toc-medicationadministration-1\">2. MedicationAdministration</a>\n\t\t\t\t\t\t\t\t</li>\n\t\t\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t\t\t<a href=\"#medicationdispense-1\" id=\"markdown-toc-medicationdispense-1\">3. MedicationDispense</a>\n\t\t\t\t\t\t\t\t</li>\n\t\t\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t\t\t<a href=\"#medicationrequest-1\" id=\"markdown-toc-medicationrequest-1\">4. MedicationRequest</a>\n\t\t\t\t\t\t\t\t</li>\n\t\t\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t\t\t<a href=\"#medicationstatement-1\" id=\"markdown-toc-medicationstatement-1\">5. MedicationStatement</a>\n\t\t\t\t\t\t\t\t</li>\n\t\t\t\t\t\t\t</ul>\n\t\t\t\t\t\t</li>\n\t\t\t\t\t</ul>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t\n\t\t\t<h3 id=\"conformance-requirements-for-the-pdmp-client\">Conformance requirements for the PDMP Client</h3>\n\t\t\t<ul>\n\t\t\t\t<li>FHIR Version: 4.0.1</li>\n\t\t\t\t<li>Supported formats: xml, json</li>\n\t\t\t\t<li>Published by: Health Level Seven International Pharmacy Work Group</li>\n\t\t\t</ul>\n\t\t\t<p>This section describes the expected capabilities of a client actor which is responsible for creating and initiating the queries for information about an individual patient.It is expected that this CapabilityStatement will be used with the <a href=\"http://hl7.org/fhir/us/core/capstatements.html\">US Core CapabilityStatement</a>. Together they describe the basic expectations for the capabilities of a conformant client application. The complete list of actual profiles and dependencies on other profiles outside the FHIR specification RESTful interactions which includes the search and read operations that <strong>MAY</strong> be supported by the client</p>\n\t\t\t<h4 id=\"behavior-1\">Behavior</h4>\n\t\t\t<p>The PDMP Clent <strong>SHALL</strong> support fetching and querying of one or more PDMP profile(s), using the supported RESTful interactions and search parameters declared in the <a href=\"CapabilityStatement-pdmp-server.html#conformance-requirements-for-the-pdmp-server\">PDMP Server CapabilityStatement</a>\n\t\t\t</p>\n\t\t\t<p>The PDMP Clent <strong>SHOULD</strong> Declare a CapabilityStatement identifying the list of profiles, operations, search parameter supported.</p>\n\t\t\t<h4 id=\"security-1\">Security</h4>\n\t\t\t<p>US Core Servers <strong>SHALL</strong> implement the security requirements documented in the <a href=\"http://hl7.org/fhir/us/core/security.html\">US-Core IG</a>.</p>\n\t\t\t<p>\n\t\t\t\t<strong>Summary of PDMP search criteria</strong>\n\t\t\t</p>\n\t\t\t<p>Specific client search capabilities are described in detail below in each of the resource sections.  The MedicationAdministration, MedicationDispense, MedicationStatement and MedicationRequest resources can represent a medication using either a code or refer to the Medication resource.  When referencing a Medication resource, the resource may be contained or an external resource. The server application can choose any one way or more than one method, but <em>if</em> the an external reference to Medication is used, the server <strong>SHALL</strong> support the [<code class=\"highlighter-rouge\">_include</code>]((http://hl7.org/fhir/STU3/http.html#include) parameter for searching this element. The client application <strong>SHALL</strong> support all above methods without causing the application to fail.</p>\n\t\t\t<h4 id=\"resource--details-1\">Resource  Details:</h4>\n\t\t\t<h5 id=\"medication-1\">1. Medication</h5>\n\t\t\t<p>Supported Profiles: <a href=\"http://hl7.org/fhir/us/core/StructureDefinition-us-core-medication.html\">US Core Medication Profile</a>\n\t\t\t</p>\n\t\t\t<h5 id=\"medicationadministration-1\">2. MedicationAdministration</h5>\n\t\t\t<p>Supported Profiles:  <a href=\"StructureDefinition-pdmp-medicationadministration.html\">PDMP MedicationAdministration Profile</a>\n\t\t\t</p>\n\t\t\t<p>Search Criteria:</p>\n\t\t\t<p>A client <strong>SHALL</strong> be capable of fetching a patient’s administered medications using:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationAdministration?patient=[id]</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationAdministration?patient=[id]&amp;_include=MedicationAdministration:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<h5 id=\"medicationdispense-1\">3. MedicationDispense</h5>\n\t\t\t<p>Supported Profiles:  <a href=\"StructureDefinition-pdmp-medicationdispense.html\">PDMP MedicationDispense Profile</a>\n\t\t\t</p>\n\t\t\t<p>Search Criteria:</p>\n\t\t\t<p>A client <strong>SHALL</strong> be capable of fetching a patient’s dispensed medications using:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationDispense?patient=[id]</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationDispense?patient=[id]&amp;_include=MedicationDispense:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<h5 id=\"medicationrequest-1\">4. MedicationRequest</h5>\n\t\t\t<p>Supported Profiles:  <a href=\"http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html\">US Core MedicationRequest Profile</a>\n\t\t\t</p>\n\t\t\t<p>Search Criteria:</p>\n\t\t\t<p>A client <strong>SHALL</strong> be capable of fetching all patient’s active medications orders using:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationRequest?patient=[id]&amp;status=active</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationRequest?patient=[id]&amp;status=active&amp;_include=MedicationRequest:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<h5 id=\"medicationstatement-1\">5. MedicationStatement</h5>\n\t\t\t<p>Search Criteria:</p>\n\t\t\t<p>A client <strong>SHALL</strong> be capable of fetching all medications for a patient using:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]&amp;_include=MedicationStatement:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<p>A client <strong>SHALL</strong> be capable of fetching all active medications for a patient using:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]&amp;status=active</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]&amp;status=active&amp;_include=MedicationStatement:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<p>A client <strong>SHALL</strong> be capable of fetching all medications for a patient for an encounter using:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]&amp;context=[id]</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]&amp;context=[id]&amp;_include=MedicationStatement:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<p>\n\t\t\t\t<br/>\n\t\t\t</p>\n\t\t</div>"
* url = "http://hl7.org/fhir/us/pdmp/CapabilityStatement/pdmp-client"
* version = "2.2.0"
* name = "PDMP_Client"
* status = #draft
* date = "2017-03-08"
* publisher = "HL7 International - Pharmacy"
* contact[0].name = "HL7 International - Pharmacy"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* contact[+].name = "Frank McKinney"
* contact[=].telecom[0].system = #email
* contact[=].telecom[=].value = "frank.mckinney@pocp.com"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "fm@frankmckinney.com"
* description = "This resource defines the expected capabilities of the PDMP Client actor when conforming to the PDMP IG and It is expected that it will be used in conjuction with the US Core CapabilityStatement. Together they describe the complete list of actual profiles, RESTful operations, and search parameters supported by PDMP Clients."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* rest.mode = #client
* rest.resource[0].type = #Medication
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "IF the Medication Resource is used in a MedicationStatement or a MedicationRequest.   Allows discovery of existing US Core Medication resources using different search criteria."
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "IF the Medication Resource is used in a MedicationStatement or a MedicationRequest.  Allows retrieval of a specific US Core Medication by id"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Allows review of changes to US Core Medication instance over time"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a historical version of a US Core Medication instance"
* rest.resource[+].type = #MedicationAdministration
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Allows discovery of existing PDMP MedicationAdministration resources using different search criteria"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a specific PDMP MedicationAdministration by id"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Allows review of changes to PDMP MedicationAdministration instance over time"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a historical version of a PDMP MedicationAdministration instance"
* rest.resource[=].searchInclude = "MedicationAdministration:medication"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #SHALL
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Allows discovery of existing PDMP MedicationDispense resources using different search criteria"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a specific PDMP MedicationDispense by id"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Allows review of changes to PDMP MedicationDispense instance over time"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a historical version of a PDMP MedicationDispense instance"
* rest.resource[=].searchInclude = "MedicationDispense:medication"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #SHALL
* rest.resource[+].extension.extension[0].url = "required"
* rest.resource[=].extension.extension[=].valueString = "patient"
* rest.resource[=].extension.extension[+].url = "required"
* rest.resource[=].extension.extension[=].valueString = "status"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #MedicationRequest
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Allows discovery of existing US Core MedicationRequest resources using different search criteria"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a specific US Core MedicationRequest by id"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Allows review of changes to US Core MedicationRequest instance over time"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a historical version of a US Core MedicationRequest instance"
* rest.resource[=].searchInclude = "MedicationRequest:medication"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam.extension.valueCode = #SHOULD
* rest.resource[=].searchParam.name = "status"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/SearchParameter/medications-status"
* rest.resource[=].searchParam.type = #token
* rest.resource[+].extension[0].extension[0].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "context"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #MedicationStatement
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Allows discovery of existing US Core MedicationStatement resources using different search criteria"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a specific US Core MedicationStatement by id"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Allows review of changes to US Core MedicationStatement instance over time"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a historical version of a US Core MedicationStatement instance"
* rest.resource[=].searchInclude = "MedicationStatement:medication"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/medications-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationStatement-category"
* rest.resource[=].searchParam[=].type = #token