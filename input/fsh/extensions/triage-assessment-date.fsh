Extension: Icp_triageAssessmentDate
Id: acc-icp-triage-assessment-date
Title: "Triage Assessment Date"
Description: "The date the triage assessment was completed."

* ^url = $icp-triage-assessment-date
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"
* ^status = #draft

* extension 0..0
* value[x] only date
* valueDate obeys date-invariant and date-not-in-future-invariant
