Extension: Icp_category_psychosocial
Id: acc-icp-category-psychosocial
Title: "Category psychosocial"
Description: "The psychosocial category."
* ^url = $icp-category-psychosocial
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension"

* ^context[+].type = #element
* ^context[=].expression = "Encounter.extension.extension"

* extension 7..7
* extension contains
    social-support-network 1..1 and
    patient-resilience 1..1 and
    equitable-access 1..1 and
    cultural-support 1..1 and
    active-participation 1..1 and
    medication-use 1..1 and
    health-literacy 1..1

* extension[social-support-network].url = "social-support-network" (exactly)
* extension[social-support-network].value[x] only code
* extension[social-support-network].valueCode 1..1
* extension[social-support-network].valueCode from $icp-complexity-score-vs (required)

* extension[patient-resilience].url = "patient-resilience" (exactly)
* extension[patient-resilience].value[x] only code
* extension[patient-resilience].valueCode 1..1
* extension[patient-resilience].valueCode from $icp-complexity-score-vs (required)

* extension[equitable-access].url = "equitable-access" (exactly)
* extension[equitable-access].value[x] only code
* extension[equitable-access].valueCode 1..1
* extension[equitable-access].valueCode from $icp-complexity-score-vs (required)

* extension[cultural-support].url = "cultural-support" (exactly)
* extension[cultural-support].value[x] only code
* extension[cultural-support].valueCode 1..1
* extension[cultural-support].valueCode from $icp-complexity-score-vs (required)

* extension[active-participation].url = "active-participation" (exactly)
* extension[active-participation].value[x] only code
* extension[active-participation].valueCode 1..1
* extension[active-participation].valueCode from $icp-complexity-score-vs (required)

* extension[medication-use].url = "medication-use" (exactly)
* extension[medication-use].value[x] only code
* extension[medication-use].valueCode 1..1
* extension[medication-use].valueCode from $icp-complexity-score-vs (required)

* extension[health-literacy].url = "health-literacy" (exactly)
* extension[health-literacy].value[x] only code
* extension[health-literacy].valueCode 1..1
* extension[health-literacy].valueCode from $icp-complexity-score-vs (required)
