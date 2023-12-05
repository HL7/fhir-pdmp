Instance: pdmp-server
InstanceOf: CapabilityStatement
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #phx
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t<ul id=\"markdown-toc\">\n\t\t\t\t<li>\n\t\t\t\t\t<a href=\"#conformance-requirements-for-the-pdmp-server\" id=\"markdown-toc-conformance-requirements-for-the-pdmp-server\">Conformance requirements for the PDMP Server</a>\n\t\t\t\t\t<ul>\n\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t<a href=\"#behavior\" id=\"markdown-toc-behavior\">Behavior</a>\n\t\t\t\t\t\t</li>\n\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t<a href=\"#security\" id=\"markdown-toc-security\">Security:</a>\n\t\t\t\t\t\t</li>\n\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t<a href=\"#profile-interaction-summary\" id=\"markdown-toc-profile-interaction-summary\">Profile Interaction Summary:</a>\n\t\t\t\t\t\t</li>\n\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t<a href=\"#resource--details\" id=\"markdown-toc-resource--details\">Resource  Details:</a>\n\t\t\t\t\t\t\t<ul>\n\t\t\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t\t\t<a href=\"#medication\" id=\"markdown-toc-medication\">1. Medication</a>\n\t\t\t\t\t\t\t\t</li>\n\t\t\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t\t\t<a href=\"#medicationadministration\" id=\"markdown-toc-medicationadministration\">2. MedicationAdministration</a>\n\t\t\t\t\t\t\t\t</li>\n\t\t\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t\t\t<a href=\"#medicationdispense\" id=\"markdown-toc-medicationdispense\">3. MedicationDispense</a>\n\t\t\t\t\t\t\t\t</li>\n\t\t\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t\t\t<a href=\"#medicationrequest\" id=\"markdown-toc-medicationrequest\">4. MedicationRequest</a>\n\t\t\t\t\t\t\t\t</li>\n\t\t\t\t\t\t\t\t<li>\n\t\t\t\t\t\t\t\t\t<a href=\"#medicationstatement\" id=\"markdown-toc-medicationstatement\">5. MedicationStatement</a>\n\t\t\t\t\t\t\t\t</li>\n\t\t\t\t\t\t\t</ul>\n\t\t\t\t\t\t</li>\n\t\t\t\t\t</ul>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t\n\t\t\t<h3 id=\"conformance-requirements-for-the-pdmp-server\">Conformance requirements for the PDMP Server</h3>\n\t\t\t<ul>\n\t\t\t\t<li>FHIR Version: 4.0.1</li>\n\t\t\t\t<li>Supported formats: xml, json</li>\n\t\t\t\t<li>Published by: Health Level Seven International Pharmacy Work Group</li>\n\t\t\t</ul>\n\t\t\t<p>The section describes the expected capabilities of the PDMP Server actor which is responsible for providing responses to the queries submitted by the US Med Client applications. It is expected that this CapabilityStatement will be used with the <a href=\"http://hl7.org/fhir/us/core/CapabilityStatement-us-core-server.html\">US Core Server CapabilityStatement</a>. Together they describe the complete list of FHIR profiles, RESTful operations, and search parameters supported by PDMP Servers. PDMP Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements.</p>\n\t\t\t<h4 id=\"behavior\">Behavior</h4>\n\t\t\t<p>Description: The PDMP Server <strong>SHALL</strong>:</p>\n\t\t\t<ul>\n\t\t\t\t<li>Support the <a href=\"http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html\">US Core Patient</a> resource profile.</li>\n\t\t\t\t<li>At a minimum, support the US Core MedicationStatement Profile.</li>\n\t\t\t\t<li>Implement the RESTful behavior according to the FHIR specification.</li>\n\t\t\t\t<li>Return the following response classes:\n    <ul>\n\t\t\t\t\t\t<li>(Status 200): successful operation</li>\n\t\t\t\t\t\t<li>(Status 400): invalid parameter</li>\n\t\t\t\t\t\t<li>(Status 401/4xx): unauthorized request</li>\n\t\t\t\t\t\t<li>(Status 403): insufficient scope</li>\n\t\t\t\t\t\t<li>(Status 404): unknown resource</li>\n\t\t\t\t\t\t<li>(Status 410): deleted resource.</li>\n\t\t\t\t\t</ul>\n\t\t\t\t</li>\n\t\t\t\t<li>Support <em>json</em> resource formats for all PDMP interactions.</li>\n\t\t\t\t<li>Declare a CapabilityStatement identifying the list of profiles, operations, and search parameters supported.</li>\n\t\t\t</ul>\n\t\t\t<p>The PDMP Server <strong>SHOULD</strong>:</p>\n\t\t\t<ul>\n\t\t\t\t<li>Support the following US Core and PDMP resource profiles:\n    <ul>\n\t\t\t\t\t\t<li>US Core Medication</li>\n\t\t\t\t\t\t<li>PDMP MedicationAdministration</li>\n\t\t\t\t\t\t<li>PDMP MedicationDispense</li>\n\t\t\t\t\t\t<li>US Core MedicationRequest</li>\n\t\t\t\t\t</ul>\n\t\t\t\t</li>\n\t\t\t\t<li>Support <em>xml</em> resource formats for all PDMP interactions.</li>\n\t\t\t\t<li>Identify the US Core profile(s) and PDMP profiles supported as part of the FHIR <code class=\"highlighter-rouge\">meta.profile</code> attribute for each instance.</li>\n\t\t\t</ul>\n\t\t\t<p>The PDMP Server <strong>MAY</strong>:</p>\n\t\t\t<ul>\n\t\t\t\t<li>Support other US Core and PDMP resource profile</li>\n\t\t\t</ul>\n\t\t\t<h4 id=\"security\">Security:</h4>\n\t\t\t<p>PDMP Servers <strong>SHALL</strong>:</p>\n\t\t\t<ul>\n\t\t\t\t<li>Implement the security requirements documented in the <a href=\"http://hl7.org/fhir/us/core/security.html\">US Core IG</a>.</li>\n\t\t\t\t<li>A server has ensured that every API request includes a valid Authorization token, supplied via: <code class=\"highlighter-rouge\">Authorization: Bearer {server-specific-token-here}</code>\n\t\t\t\t</li>\n\t\t\t\t<li>A server has rejected any unauthorized requests by returning an <code class=\"highlighter-rouge\">HTTP 401</code> Unauthorized response code.</li>\n\t\t\t</ul>\n\t\t\t<h4 id=\"profile-interaction-summary\">Profile Interaction Summary:</h4>\n\t\t\t<ul>\n\t\t\t\t<li>All servers <strong>SHALL</strong> make available the <a href=\"https://hl7.org/fhir/STU3/http.html#read.html\">read</a> and <a href=\"http://hl7.org/fhir/STU3/http.html#search\">search</a> interactions for the Profiles the server chooses to support.</li>\n\t\t\t\t<li>All servers <strong>SHOULD</strong> make available the <a href=\"https://hl7.org/fhir/STU3/http.html#vread.html\">vread</a> and <a href=\"http://hl7.org/fhir/STU3/http.html#history\">history-instance</a> interactions for the Profiles the server chooses to support.</li>\n\t\t\t</ul>\n\t\t\t<p>\n\t\t\t\t<strong>Summary of PDMP search criteria</strong>\n\t\t\t</p>\n\t\t\t<p>Specific server search capabilities are described in detail below in each of the resource sections.  The MedicationAdministration, MedicationDispense, MedicationStatement and MedicationRequest resources can represent a medication using either a code or refer to the Medication resource.  When referencing a Medication resource, the resource may be contained or an external resource. The server application can choose any one way or more than one method, but <em>if</em> the an external reference to Medication is used, the server <strong>SHALL</strong> support the <a href=\"http://hl7.org/fhir/STU3/http.html#include\">\n\t\t\t\t\t<code class=\"highlighter-rouge\">_include</code>\n\t\t\t\t</a> parameter for searching this element. The client application must support all methods.</p>\n\t\t\t<table class=\"grid\">\n\t\t\t\t<thead>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<th>Resource Type</th>\n\t\t\t\t\t\t<th>Supported Profiles</th>\n\t\t\t\t\t\t<th>Supported Searches</th>\n\t\t\t\t\t\t<th>Supported _includes</th>\n\t\t\t\t\t</tr>\n\t\t\t\t</thead>\n\t\t\t\t<tbody>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<a href=\"#medication\">Medication</a>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>US Core Medication Profile</td>\n\t\t\t\t\t\t<td> </td>\n\t\t\t\t\t\t<td> </td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<a href=\"#medicationadministration\">MedicationAdministration</a>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>PDMP MedicationAdministration Profile</td>\n\t\t\t\t\t\t<td>patient</td>\n\t\t\t\t\t\t<td>MedicationAdministration:medication</td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<a href=\"#medicationdispense\">MedicationDispense</a>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>PDMP MedicationDispense Profile</td>\n\t\t\t\t\t\t<td>patient</td>\n\t\t\t\t\t\t<td>MedicationDispense:medication</td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<a href=\"#medicationrequest\">MedicationRequest</a>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>US Core MedicationRequest Profile</td>\n\t\t\t\t\t\t<td>patient, status, patient + status</td>\n\t\t\t\t\t\t<td>MedicationRequest:medication</td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<a href=\"#medicationstatement\">MedicationStatement</a>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>patient, status, context, patient + status, patient + context</td>\n\t\t\t\t\t\t<td>MedicationStatement:medication</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</tbody>\n\t\t\t</table>\n\t\t\t<h4 id=\"resource--details\">Resource  Details:</h4>\n\t\t\t<h5 id=\"medication\">1. Medication</h5>\n\t\t\t<p>Supported Profiles:  <a href=\"http://hl7.org/fhir/us/core/StructureDefinition-us-core-medication.html\">US Core Medication Profile</a>\n\t\t\t</p>\n\t\t\t<h5 id=\"medicationadministration\">2. MedicationAdministration</h5>\n\t\t\t<p>Supported Profiles:  <a href=\"StructureDefinition-pdmp-medicationadministration.html\">PDMP MedicationAdministration Profile</a>\n\t\t\t</p>\n\t\t\t<p>Search Criteria:</p>\n\t\t\t<p>A server <strong>SHALL</strong> be capable of fetching a patient�s administered medications using one of or both:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationAdministration?patient=[id]</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationAdministration?patient=[id]&amp;_include=MedicationAdministration:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<p>Search Parameters:</p>\n\t\t\t<table class=\"grid\">\n\t\t\t\t<thead>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<th>Conformance</th>\n\t\t\t\t\t\t<th>Parameter</th>\n\t\t\t\t\t\t<th>Type</th>\n\t\t\t\t\t\t<th>_include (see documentation)</th>\n\t\t\t\t\t\t<th>Modifiers</th>\n\t\t\t\t\t</tr>\n\t\t\t\t</thead>\n\t\t\t\t<tbody>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<strong>SHALL</strong>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>patient</td>\n\t\t\t\t\t\t<td>reference</td>\n\t\t\t\t\t\t<td>MedicationAdministration:medication</td>\n\t\t\t\t\t\t<td> </td>\n\t\t\t\t\t</tr>\n\t\t\t\t</tbody>\n\t\t\t</table>\n\t\t\t<h5 id=\"medicationdispense\">3. MedicationDispense</h5>\n\t\t\t<p>Supported Profiles:  <a href=\"http://hl7.org/fhir/us/pdmp/STU1/StructureDefinition-pdmp-medicationdispense.html\">PDMP MedicationDispense Profile</a>\n\t\t\t</p>\n\t\t\t<p>Search Criteria:</p>\n\t\t\t<p>A server <strong>SHALL</strong> be capable of returning a patient�s dispensed medications using one of or both:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationDispense?patient=[id]</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationDispense?patient=[id]&amp;_include=MedicationDispense:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<table class=\"grid\">\n\t\t\t\t<thead>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<th>Conformance</th>\n\t\t\t\t\t\t<th>Parameter</th>\n\t\t\t\t\t\t<th>Type</th>\n\t\t\t\t\t\t<th>_include (see documentation)</th>\n\t\t\t\t\t\t<th>Modifiers</th>\n\t\t\t\t\t</tr>\n\t\t\t\t</thead>\n\t\t\t\t<tbody>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<strong>SHALL</strong>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>patient</td>\n\t\t\t\t\t\t<td>reference</td>\n\t\t\t\t\t\t<td>MedicationDispense:medication</td>\n\t\t\t\t\t\t<td> </td>\n\t\t\t\t\t</tr>\n\t\t\t\t</tbody>\n\t\t\t</table>\n\t\t\t<h5 id=\"medicationrequest\">4. MedicationRequest</h5>\n\t\t\t<p>Supported Profiles:  <a href=\"http://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html\">US Core MedicationRequest Profile</a>\n\t\t\t</p>\n\t\t\t<p>Search Criteria:</p>\n\t\t\t<p>A server <strong>SHALL</strong> be capable of returning a patient�s active medications orders using one of or both:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationRequest?patient=[id]</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationRequest?patient=[id]&amp;_include=MedicationRequest:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<p>Search Parameters:</p>\n\t\t\t<table class=\"grid\">\n\t\t\t\t<thead>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<th>Conformance</th>\n\t\t\t\t\t\t<th>Parameter</th>\n\t\t\t\t\t\t<th>Type</th>\n\t\t\t\t\t\t<th>_include (see documentation)</th>\n\t\t\t\t\t\t<th>Modifiers</th>\n\t\t\t\t\t</tr>\n\t\t\t\t</thead>\n\t\t\t\t<tbody>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<strong>SHALL</strong>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>status + status</td>\n\t\t\t\t\t\t<td>reference + token</td>\n\t\t\t\t\t\t<td>MedicationRequest:medication</td>\n\t\t\t\t\t\t<td> </td>\n\t\t\t\t\t</tr>\n\t\t\t\t</tbody>\n\t\t\t</table>\n\t\t\t<h5 id=\"medicationstatement\">5. MedicationStatement</h5>\n\t\t\t<p>Search Criteria:</p>\n\t\t\t<p>A server <strong>SHALL</strong> be capable of returning all medications for a patient using one of or both:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]&amp;_include=MedicationStatement:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<p>A server <strong>SHALL</strong> be capable of returning all active medications for a patient using:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]&amp;status=active</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]&amp;status=active&amp;_include=MedicationStatement:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<p>A server <strong>SHALL</strong> be capable of returning all medications for a patient for an encounter using:</p>\n\t\t\t<ul>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]&amp;context=[id]</code>\n\t\t\t\t</li>\n\t\t\t\t<li>\n\t\t\t\t\t<code class=\"highlighter-rouge\">GET /MedicationStatement?patient=[id]&amp;context=[id]&amp;_include=MedicationStatement:medication</code>\n\t\t\t\t</li>\n\t\t\t</ul>\n\t\t\t<p>Search Parameters:</p>\n\t\t\t<table class=\"grid\">\n\t\t\t\t<thead>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<th>Conformance</th>\n\t\t\t\t\t\t<th>Parameter</th>\n\t\t\t\t\t\t<th>Type</th>\n\t\t\t\t\t\t<th>_include (see documentation)</th>\n\t\t\t\t\t\t<th>Modifiers</th>\n\t\t\t\t\t</tr>\n\t\t\t\t</thead>\n\t\t\t\t<tbody>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<strong>SHALL</strong>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>patient</td>\n\t\t\t\t\t\t<td>reference</td>\n\t\t\t\t\t\t<td>MedicationStatement:medication</td>\n\t\t\t\t\t\t<td> </td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<strong>SHALL</strong>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>patient + status</td>\n\t\t\t\t\t\t<td>reference + token</td>\n\t\t\t\t\t\t<td>MedicationStatement:medication</td>\n\t\t\t\t\t\t<td> </td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t<strong>SHALL</strong>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td>patient + context</td>\n\t\t\t\t\t\t<td>reference</td>\n\t\t\t\t\t\t<td>MedicationStatement:medication</td>\n\t\t\t\t\t\t<td> </td>\n\t\t\t\t\t</tr>\n\t\t\t\t</tbody>\n\t\t\t</table>\n\t\t\t<p>\n\t\t\t\t<br/>\n\t\t\t</p>\n\t\t</div>"
* url = "http://hl7.org/fhir/us/pdmp/CapabilityStatement/pdmp-server"
* version = "2.2.0"
* name = "PDMP_Server"
* status = #draft
* date = "2017-03-08"
* publisher = "HL7 International / Pharmacy"
* contact[0].name = "HL7 International / Pharmacy"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* contact[+].name = "Frank McKinney"
* contact[=].telecom[0].system = #email
* contact[=].telecom[=].value = "frank.mckinney@pocp.com"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "fm@frankmckinney.com"
* description = "[TO BE UPDATED] This resource defines the expected capabilities of the PDMP Server actor when conforming to the PDMP IG and It is expected that it will be used in conjuction with the US Core CapabilityStatement. Together they describe the complete list of actual profiles, RESTful operations, and search parameters supported by PDMP Servers.  PDMP Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* rest.mode = #server
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
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Allows discovery of existing US Core medicationadmnistration resources using different search criteria"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a specific US Core medicationadmnistration by id"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Allows review of changes to US Core medicationadmnistration instance over time"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a historical version of a US Core medicationadmnistration instance"
* rest.resource[=].searchInclude = "MedicationAdministration:medication"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #MAY
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Allows discovery of existing US Core medicationdispense resources using different search criteria"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a specific US Core medicationdispense by id"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Allows review of changes to US Core medicationdispense instance over time"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a historical version of a US Core medicationdispense instance"
* rest.resource[=].searchInclude = "MedicationDispense:medication"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #MAY
* rest.resource[+].extension.extension[0].url = "required"
* rest.resource[=].extension.extension[=].valueString = "patient"
* rest.resource[=].extension.extension[+].url = "required"
* rest.resource[=].extension.extension[=].valueString = "status"
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #MedicationRequest
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Allows discovery of existing US Core medicationrequest resources using different search criteria"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a specific US Core medicationrequest by id"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Allows review of changes to US Core medicationrequest instance over time"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a historical version of a US Core medicationrequest instance"
* rest.resource[=].searchInclude = "MedicationRequest:medication"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #MAY
* rest.resource[=].searchParam.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam.extension.valueCode = #SHALL
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
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Allows discovery of existing US Core medicationstatement resources using different search criteria"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a specific US Core medicationstatement by id"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Allows review of changes to US Core medicationstatement instance over time"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a historical version of a US Core medicationstatement instance"
* rest.resource[=].searchInclude = "MedicationStatement:medication"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #MAY
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/medications-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "context"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationStatement-context"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationStatement-category"
* rest.resource[=].searchParam[=].type = #token