Profile:        IcpCaseCreate
Parent:         acc-icp-case
Id:             acc-icp-case-create
Title:          "ACC ICP Case Create Resource"
Description:    "ICP Case Create is to be used by the supplier to furnish ACC with the required information following the completion of the triage assessment and the decision to accept the patient into their ICP service."
* obeys active-status-invariant and start-date-when-active-finished-invariant

* ^url = $icp-case-create
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft

* type 1..1
* type ^short = "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."
* type.coding 1..1
* type.coding.system 1..1
* type.coding.system = $icp-service-type-cs
* type.coding.code from $icp-service-type-vs (required)
* type.coding.code 1..1
* type.coding.code ^short = "msk"

* extension 1..*
* extension contains
    $icp-service-bundle named serviceBundle 1..1 and
    $icp-acc-client-authority named accClientAuthority 1..1 and
    $icp-client-participation-agreement named clientParticipationAgreement 1..1 and
    $icp-covers-all-claim-diagnoses named coversAllClaimDiagnoses 0..1 and
    $icp-triage-assessment-date named triageAssessmentDate 1..1 and
    $icp-referral-source named referralSource 1..1 and
    $icp-complexity-scores named complexityScores 1..1 and
    $icp-exceptional-funding named exceptionalFunding 0..1

* extension[serviceBundle] ^short = "(icpkar1 | icpkar2 | icpkar3 | icpkrr1 | icpkrr2 | icpkrr3 | icpkrr4 | icpkrr5 | icpspr1 | icpspr2 | icpspr3 | icpspr4 | icpspr5 | icpspr6 | cpspr7  icpspr8 | icpshr1 | icpshr2 | icpshr3 | icpshr4 | icpshr5 | icpshr6)"
* extension[accClientAuthority] ^short = "Indicates that the Client has agreed to ACC being able to collect, store, use, &amp; share their information."
* extension[clientParticipationAgreement] ^short = "Indicates that the Client has agreed to participating in ICP."
* extension[coversAllClaimDiagnoses] ^short = "Indicates whether or not the ICP case is treating all the diagnoses on the claim."
* extension[triageAssessmentDate] ^short = "The date the triage assessment was completed."
* extension[referralSource] ^short = "(gp | physio | specialist | allied | employer | rognoa | other | acc | patient)"
* extension[complexityScores] ^short = "The scores obtained from the ICP complexity assessment/tool."
* extension[exceptionalFunding] ^short = "Indicates if exceptional funding is required for this treatment."