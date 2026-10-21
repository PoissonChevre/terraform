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
output suffix {
  value = random_string.suffix.result
}

