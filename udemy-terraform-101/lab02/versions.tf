# lesson 55 - configure the azure terraform provider
 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.3"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

# better tu use a variable environnement 
# az account show
#  subscription_id = "b8f30248-f8f8-4dd6-a6e9-705a00370baf"
# export ARM_SUBSCRIPTION_ID= "b8f30248-f8f8-4dd6-a6e9-705a00370baf"

#  tenant_id       = "710e6e51-06f5-4d34-8bb7-237fcd679135"
  
}
