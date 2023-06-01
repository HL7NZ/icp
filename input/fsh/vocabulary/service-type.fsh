ValueSet: ICPServiceType
Id: acc-icp-service-type
Title: "Service Type"
Description: "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."

* ^url = $icp-service-type-vs
* ^version = "0.1.0"
* ^experimental = false

* include codes from system $icp-service-type-cs


CodeSystem: ICPServiceType
Id: acc-icp-service-type
Title: "Service Type"
Description: "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."

* ^url = $icp-service-type-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #msk "Muscular Skeletal"