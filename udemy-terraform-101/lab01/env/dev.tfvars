# lesson 30 - input variables files
# terraform apply -var-file dev.tfvars -auto-approve
# auto ==> default.auto.tfvars |& terraform.tfvars
# specific environment variable 
environment_name = "dev"


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
