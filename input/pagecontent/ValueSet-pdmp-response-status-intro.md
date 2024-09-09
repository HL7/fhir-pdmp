<p></p>

<blockquote class="fm_ex-alert fm_ex-alert--info">
<p>
 <b>Note regarding code values.</b> This value set contains codes from a code system maintained by the Prescription Monitoring Information eXchange (PMIX) Standards Organization. To assist implementers, below are the codes at the time of publishing.
</p>
</blockquote>

<p></p>

<table class="codes">
    <tbody>
		<tr><td style="white-space:nowrap"><b>Code</b></td><td><b>System</b></td><td><b>Display</b></td><td><b>Definition</b></td></tr>
		<tr><td>complete</td><td>http://terminology.hl7.org/CodeSystem/PMIXStatusCode</td><td>Complete</td><td>Data is available and returned for a person that matches the requested patient based on the information provided in the request</td></tr>
		<tr><td>no-data</td><td>http://terminology.hl7.org/CodeSystem/PMIXStatusCode</td><td>No Data</td><td>There is no data for a person that matches the requested patient based on the information provided in the request</td></tr>
		<tr><td>disallowed</td><td>http://terminology.hl7.org/CodeSystem/PMIXStatusCode</td><td>Disallowed</td><td>The requesting user's role is not permitted in the state from which they are requesting information</td></tr>
		<tr><td>error</td><td>http://terminology.hl7.org/CodeSystem/PMIXStatusCode</td><td>Error</td><td>An error occurred in request process either at the PDMP or hub level. This status would include hub or PDMP system errors as well as externally created faults. The hub should also send the specific error text</td></tr>
		<tr><td>deferred</td><td>http://terminology.hl7.org/CodeSystem/PMIXStatusCode</td><td>Deferred</td><td>The response cannot be returned at this time. This may be caused by the request going to a manual process (placed in a queue for a person to review and reconcile) in a state PDMP system</td></tr>
		<tr><td>version-mismatch</td><td>http://terminology.hl7.org/CodeSystem/PMIXStatusCode</td><td>Version Mismatch</td><td>Differences in the versions of the hub software being used by two states cause an error</td></tr>
		<tr><td>pre-stage-accepted</td><td>http://hl7.org/fhir/us/pdmp/CodeSystem/temporary-pdmp-response-status</td><td>Pre-Stage Request Accepted</td><td>The request to pre-stage PDMP history results for the submitted individual has been accepted</td></tr>
</tbody>
</table>

<p></p>
