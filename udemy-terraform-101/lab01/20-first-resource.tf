# https://registry.terraform.io/browse/providers
# lesson 20 - first resource 
resource "random_string" "suffix" {
  length = 6
  upper  = false
  special = false
}

# lesson 23 - locals
# terraform apply  -var "application_name=marksblog" -var "environment_name=dev" -auto-approve
# lesson 27
locals {
  environment_prefix= "${var.application_name}-${var.environment_name}-${random_string.suffix.result}"
}

