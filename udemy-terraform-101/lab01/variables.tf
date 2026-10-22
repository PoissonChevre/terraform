# lesson 22 - first input variables
# terraform plan ==> "enter a value"
# terraform plan -var "application_name=jason"
# lesson 25 
variable "application_name" {
    
}

# terraform plan -var "application_name=jason" -var "environment_name=jason"
variable "environment_name" {
}

# lesson 32 - sensitive inputs & outputs
variable "api_key" {
  sensitive = true
}