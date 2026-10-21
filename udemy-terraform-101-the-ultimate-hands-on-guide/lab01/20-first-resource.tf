# lesson 20 - first resource 
resource "random_string" "suffix" {
  length = 4
  upper  = false
  special = false
}
