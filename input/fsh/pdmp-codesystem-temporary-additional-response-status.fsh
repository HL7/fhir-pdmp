CodeSystem: PdmpAdditionalResponseStatus
Id: temporary-pdmp-codesystem-additional-response-status
Title: "PDMP CodeSystem Additional Response Status Codes"
Description: "Codes indicating the overall status of a PDMP response. Intended to augment the PMIX Status Message code set"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #pre-stage-accepted "Pre-Stage Request Accepted" "The request to pre-stage PDMP history results for the submitted individual has been accepted"