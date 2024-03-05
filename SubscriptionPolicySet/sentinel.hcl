import "module" "tfplan-utils" {
    source = "../CommonFunctions/tfplan-utils.sentinel"
}

import "static" "policy-config" {
    source = "../PolicyConfigurations/policy_config.json"
    format = "json"
}

policy "deploy-allowed-resource-type" {
    source = "./deploy-allowed-resource-type.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "deploy-resource-in-approved-location" {
    source = "./deploy-resource-in-approved-location.sentinel"
    enforcement_level = "hard-mandatory"
}
policy "enforce-mandatory-tags-for-subscription" {
    source = "./enforce-mandatory-tags-for-subscription.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "restrict-deleting-subscription" {
    source = "./restrict-deleting-subscription.sentinel"
    enforcement_level = "hard-mandatory"
}