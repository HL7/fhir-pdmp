This is an example of a Parameters resource used in the response to the Patient/$pdmp-history operation. This example illustrates an exception situation where the PDMP Responder couldn't retrieve data from its state PDMP.

<p></p>

<h3>Example data content</h3>

<div class="fm_ex"><span id="expandNote"><a class="expandLink" href="#" onclick="javascript:{document.querySelectorAll('.fm_ex .detail.collapse').forEach(el => {el.classList.remove('collapse'); el.classList.remove('in'); el.classList.add('in');}); document.querySelectorAll('.fm_ex .summary').forEach(el => {el.classList.remove('collapsed');});}">expand all</a> | <a class="expandLink" href="#" onclick="javascript:{document.querySelectorAll('.fm_ex .detail.in').forEach(el => {el.classList.remove('in'); el.classList.remove('in'); el.classList.add('collapse');}); document.querySelectorAll('.fm_ex .summary').forEach(el => {el.classList.add('collapsed');}); }">contract all</a></span><span class="emph0">Parameters</span><br /><span style="display:inline-block"><span class="emph1">id</span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">pdmp-history-output-parameters-3-error-retrieving-data</span></span></span><br><span style="display:inline-block"><span class="emph1">meta</span><span style="display:inline-block"><span class="emph2">profile</span></span></span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-parameters-response-operation</span></span><br><span style="display:inline-block"><span class="emph1">parameter</span><span style="display:inline-block"><span class="emph2">name</span></span></span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">pdmp-history-result</span></span><span style="display:inline-block"><span class="emph2">resource</span><span style="display:inline-block"><span class="emph3">Bundle</span></span></span><span style="display:inline-block"><span class="emph4">id</span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">bundle-res-1</span></span></span><span style="display:inline-block"><span class="emph4">meta</span><span style="display:inline-block"><span class="emph5">profile</span></span></span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">http://hl7.org/fhir/us/pdmp/StructureDefinition/pdmp-bundle-history-result</span></span><span style="display:inline-block"><span class="emph4">type</span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">collection</span></span></span><span style="display:inline-block"><span class="emph4">entry</span><span style="display:inline-block"><span class="emph5">fullUrl</span></span></span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">http://example.org/pdmp-a/OperationOutcome/100</span></span><br><span style="display:inline-block"><span class="emph5">resource</span><span style="margin-left:50px; display:block"><span class="preSummary"></span><span data-toggle="collapse" style="display:inline-block;"  data-target="#_Parameters_parameter_resource_Bundle_entry_resource_OperationOutcome" class="emph0 summary collapsed">OperationOutcome</span><span id="_Parameters_parameter_resource_Bundle_entry_resource_OperationOutcome" class="detail collapse"><br><span style="display:inline-block"><span class="emph1">id</span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">100</span></span></span><br><span style="display:inline-block"><span class="emph1">issue</span><span style="display:inline-block"><span class="emph2">severity</span></span></span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">error</span></span><span style="display:inline-block"><span class="emph2">code</span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">processing</span></span></span><span style="display:inline-block"><span class="emph2">diagnostics</span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">The state PDMP system did not respond within the timeout period</span></span></span></span></span></span><br/><span style="display:inline-block"><span class="emph5">search</span><span style="display:inline-block"><span class="leastEmph">mode</span></span></span><span style="display:inline-block"><span class="leastEmph fhirValue">@value</span>: &nbsp;<span class="valueEmph">outcome</span></span></div>

<hr>