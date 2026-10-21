# lesson 22 - first input variables
# terraform plan ==> "enter a value"
# terraform plan -var "application_name=jason"

variable "application_name" {
}

# terraform plan -var "application_name=jason" -var "environment_name=jason"
variable "environment_name" {
}

