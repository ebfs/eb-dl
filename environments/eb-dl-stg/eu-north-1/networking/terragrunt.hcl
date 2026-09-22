include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../../../modules/networking"
}

inputs = {
  project     = "eb-dl"
  environment = "staging"

  vpc_cidr = "10.0.0.0/16"
}