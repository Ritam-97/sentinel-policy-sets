mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-success.sentinel"
  }
}

import "module" "tfplan-utils" {
    source = "../../../CommonFunctions/tfplan-utils.sentinel"
}

import "static" "policy-config" {
    source = "../../../PolicyConfigurations/policy_config.json"
    format = "json"
}

test {
  rules = {
    main = true
  }
}
