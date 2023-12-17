terraform {
  source = "../../../../modules/vpc-networks"
}

// find `terragrunt.hcl` for base configuration
include {
  path   = find_in_parent_folders()
}