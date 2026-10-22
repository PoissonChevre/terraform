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
  value = "${var.api_key}-bar"
  sensitive = true
}

