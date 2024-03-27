CodeSystem: TemporaryPMIXPatientAlertCategoryCode
Id: temporary-pmix-patient-alert-category-code
Title: "PMIX Patient Alert Category Code (Temporary)"
Description: "A code identifying a kind of patient alert."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #"01" "Suspected non-fatal overdose alert"
* #"02" "Suspected fatal overdose alert"
* #"03" "Doctor/pharmacy shopping alert"
* #"04" "Overlapping prescription alert"
* #"05" "MME alert"
* #"06" "Marijuana alert"
* #"07" "Prescribing practice alert"
* #"08" "Dispensing practice alert"
* #"09" "Naloxone dispensing alert"
* #"10" "Conviction alert"
* #"11" "Law Enforcement alert"
* #"12" "Patient contract alert"
* #"99" "Unspecified Alert"