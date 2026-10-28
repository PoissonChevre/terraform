# lesson 56 - create an azure resource group
# lesson 57 - ressource group naming conventions
# lesson 58 - create an azure storage account
/*
beug end of apply => resource "azurerm_storage_account" exist
az storage account list -g rg-marksblog-prod -o table
delete and retry
az storage account delete -n st0s0x9pyi1u -g rg-marksblog-prod --yes

terraform import -var-file ./env/prod.tfvars azurerm_storage_account.main /subscriptions/b8f30248-f8f8-4dd6-a6e9-705a00370baf/resourceGroups/rg-marksblog-prod/providers/Microsoft.Storage/storageAccounts/st0s0x9pyi1u

terraform plan -var-file ./env/prod.tfvars
*/

resource "azurerm_resource_group" "main" {
  name     = "rg-${var.application_name}-${var.environment_name}"
  location = var.primary_location
}

# ! naming convention for storage

resource "random_string" "suffix" {
  length = 10
  upper = false
  special = false
} 


resource "azurerm_storage_account" "main" {
  name                     = "st${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
