# lesson 24 - output 
# terraform apply  -var "application_name=jason" -var "environment_name=jason"
# terraform output application_name

output "application_name" {
  value = var.application_name
}

output "environment_name" {
  value = var.environment_name
}

output "environment_prefix" {
  value = local.environment_prefix
}

# lesson 27 - referencing resource output
output "suffix" {
  value = random_string.suffix.result
}

# lesson 32 - sensitive inputs & outputs
# terraform output api_key  ==> insecure even with sensitive=true ==> output show sensitive variable terraform state
#"outputs": {
#    "api_key": {
#      "value": "private-bar",
#      "type": "string",
#      "sensitive": true
#    },

output "api_key" {
  value     = "${var.api_key}-bar"
  sensitive = true
}

output "primary_region" {
  value = var.regions[0]
}

output "primary_region_instance_1" {
  value = var.region_instance_count["westus"]  
}

output "primary_region_instance_2" {
  value = var.region_instance_count["eastus"]  
}

output "primary_region_instance_3" {
  value = var.region_instance_count[var.regions[0]]  
}

output "kind" {
  value = var.sku_settings.kind
}

# lesson 44 - using the terraform module registry 
output "alpha" {
  value = module.bravo.random_string
}

output "bravo" {
  value = module.bravo.random_string
}

output "charlie" {
  value = module.charlie.random_string
}

output "regionA" {
  value = module.regional_stamps[0].name
}

output "regionB" {
  value = module.regional_stamps[1].name
}

output "regionC" {
  value = module.regional_stamps2["foo"].name
}

output "regionD" {
  value = module.regional_stamps2["bar"].name
}