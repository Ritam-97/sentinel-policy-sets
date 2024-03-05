import "module" "tfplan-utils" {
    source = "../common-functions/tfplan-utils.sentinel"
}

import "static" "policy-config" {
    source = "../PolicyConfigurations/policy_config.json"
    format = "json"
}

policy "restrict-deleting-resource-group" {
    source = "./restrict-deleting-resource-group.sentinel"
    enforcement_level = "hard-mandatory"
}