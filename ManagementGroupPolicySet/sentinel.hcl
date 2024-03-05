import "module" "tfplan-utils" {
    source = "../common-functions/tfplan-utils.sentinel"
}

import "static" "policy-config" {
    source = "../PolicyConfigurations/policy_config.json"
    format = "json"
}

policy "restrict-deleting-management-group" {
    source = "./restrict-deleting-management-group.sentinel"
    enforcement_level = "hard-mandatory"
}

mock "tfplan/v2" {
  module {
    source = "./Test/restrict-deleting-management-group/mock-tfplan-success.sentinel"
  }
}