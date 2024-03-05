import "module" "tfplan-utils" {
    source = "../common-functions/tfplan-utils.sentinel"
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

policy "enforce-mandatory-tags" {
    source = "./enforce-mandatory-tags.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "enforce-naming-convention" {
    source = "./enforce-naming-convention.sentinel"
    enforcement_level = "hard-mandatory"
}