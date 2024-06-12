Mapping: pdmp-meddispense-to-pmix-report
Source: pdmp-medicationdispense
Target: "http://pmixpmp.org/niem/4.0/extension"
Id: pdmp-medication--pmix-report
Title: "PMIX/NIEM 4.0 Prescription Report"
* whenPrepared -> "pmp:PrescriptionFilledDate"
// * authorizingPrescription.authoredOn -> "pmp:PrescriptionWrittenDate<"
* identifier.value -> "pmp:PrescriptionNumberText"
* medicationCodeableConcept.text -> "pmp:PrescriptionDrug/pmp:DrugProductNameText"
* medicationCodeableConcept.coding.code -> "pmp:PrescriptionDrug/pmp:DrugNDCProductIdentifier" "coding.system='http://hl7.org/fhir/sid/ndc'"
// * medicationCodeableConcept.ingredient.strength -> "pmp:PrescriptionDrug/pmp:DrugStrengthText"
// * medicationCodeableConcept.form -> "pmp:PrescriptionDrug/pmp:DrugUnitOfMeasureText"
* quantity -> "pmp:DispensedQuantity"
* daysSupply -> "pmp:DaysSupplyCount"
* extension[pdmp-extension-rx-fill-number] -> "pmp:DrugRefillNumberCount"
// * authorizingPrescription.dispenseRequest.numberOfRepeatsAllowed -> "pmp:RefillsAuthorizedCount"
* type -> "pmp:PartialFillIndicator"
* extension[pdmp-extension-method-of-payment] -> "pmp:MethodOfPaymentCode"
* extension[pdmp-extension-opioid-treatment-code] -> "pmp:OpioidTreatmentCategoryCode"
* extension[pdmp-extension-rx-transmission-method] -> "pmp:TransmissionFormOfRxOriginCode"

Mapping: pdmp-patient-to-pmix-report
Source: pdmp-patient
Target: "http://pmixpmp.org/niem/4.0/extension"
Id: pdmp-patient-pmix-report
Title: "PMIX/NIEM 4.0 Prescription Report"
* name.given -> "nc:PersonName/nc:PersonGivenName"
* name.family -> "nc:PersonName/nc:PersonSurName"
* birthDate -> "nc:PersonBirthDate/Date"
* gender -> "PersonSexCode"
* address.line -> "pmp:PersonPrimaryContactInformation/ContactMailingAddress/LocationStreet"
* address.city -> "pmp:PersonPrimaryContactInformation/ContactMailingAddress/nc:LocationCityName"
* address.state -> "pmp:PersonPrimaryContactInformation/ContactMailingAddress/LocationState"
* address.postalCode -> "pmp:PersonPrimaryContactInformation/ContactMailingAddress/nc:LocationPostalCode"
* identifier.value -> "PersonSocialSecurityNumberIdentifier" "identifier.system=http://hl7.org/fhir/sid/us-ssn'"


Mapping: pdmp-pharmacy-to-pmix-report
Source: pdmp-organization-pharmacy
Target: "http://pmixpmp.org/niem/4.0/extension"
Id: pdmp-pharmacy-pmix-report
Title: "PMIX/NIEM 4.0 Prescription Report"
* name -> "nc:OrganizationDoingBusinessAsName"
* address.line -> "nc:OrganizationPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationStreet/nc:StreetFullText"
* address.city -> "nc:OrganizationPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationCityName"
* address.state -> "nc:OrganizationPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationStateUSPostalServiceCode"
* address.postalCode -> "nc:OrganizationPrimaryContactInformation/nc:ContactMailingAddress/nc:LocationPostalCode"
* telecom -> "nc:OrganizationPrimaryContactInformation/nc:ContactTelephoneNumber/nc:FullTelephoneNumber"
* identifier.value -> "pmp:DEANumberIdentifier" "identifier.system='http://terminology.hl7.org/NamingSystem/usdeanumber'"
* identifier.value -> "pmp:NCPDPIdentifier" "identifier.system='http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber'"
* identifier.value -> "pmp:NPIIdentifier" "identifier.system='http://hl7.org/fhir/sid/us-npi'"



