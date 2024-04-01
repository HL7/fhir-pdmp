CodeSystem: TemporaryPMIXResponseStatus
Id: temporary-pmix-response-status
Title: "PMIX Response Status Codes (Temporary)"
Description: "Code indicating the overall status of a PDMP response"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #complete "Complete" "Data is available and returned for a person that matches the requested patient based on the information 
provided in the request"
* #no-data "No Data" "There is no data for a person that matches the requested patient based on the information provided in the 
request"
* #disallowed "Disallowed" "The requesting user's role is not permitted in the state from which they are requesting information"
* #error "Error" "An error occurred in request process either at the PDMP or hub level. This status would include hub or PDMP 
system errors as well as externally created faults. The hub should also send the specific error text"
* #deferred "Deferred" "The response cannot be returned at this time. This may be caused by the request going to a manual process 
(placed in a queue for a person to review and reconcile) in a state PDMP system"
* #version-mismatch "Version Mismatch" "Differences in the versions of the hub software being used by two states cause an error"