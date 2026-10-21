# lesson 20 - first resource 
resource "random_string" "suffix" {
  length = 4
  upper  = false
  special = false
}

# lesson 23 - locals
locals {
  environment_prefix= "marksblog-dev"
}

