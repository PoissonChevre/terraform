# lesson 31 - input variables files
# terraform apply -var-file prod.tfvars -auto-approve

environment_name = "prod"

# lesson 37 - input variables types
# terraform apply -var-file ./env/prod.tfvars

instance_count = 7
enabled        = true
regions        = ["westus", "belgiumcentral", "westus"]
region_instance_count = {
  "westus" = 4
  "eastus" = 8
}
region_set = ["westus", "belgiumcentral"]
sku_settings = {
  kind = "p"
  tier = "Business"
}
