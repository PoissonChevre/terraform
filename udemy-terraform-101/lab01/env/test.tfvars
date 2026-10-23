# lesson 31 - managing input variables files
# all in the same directory | group them with a prefix env-x.tfvars
# terraform apply -var-file env-test.tfvars -auto-approve
# terraform apply -var-file ./env/test.tfvars -auto-approve

environment_name = "test"

# lesson 37 - input variables types
# terraform apply -var-file ./env/prod.tfvars

instance_count = 7
enabled        = false
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
