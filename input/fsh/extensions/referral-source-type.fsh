Extension: Icp_referralSourceType
Id: acc-icp-referral-source-type
Title: "Referral Source Type"
Description: "Integrated Care Pathways Referral Source Type"
* ^url = $icp-referral-source-type
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-11-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context.type = #element
* ^context.expression = "EpisodeOfCare.extension"

* value[x] only code
* valueCode 1..1
* valueCode from $icp-referral-source-type-vs (required)