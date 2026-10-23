# lesson 45 - creating your first module 
# local so not present in .terraform/modules after init
resource "random_string" "rando" {
  length  = 6
  upper   = false
  special = false
}
