# lesson 33_36 - passing input variables using shell

export TF_VAR_api_key="private"  
terraform plan  
unset TF_VAR_api_key # to remove the api_key  

powershell => $env:TF_VAR_API_KEY="foo"  

## Variable precedence (lowest to highest)  

1. default in the variable block
2. export TF_VAR_xxx="xxx" (environment variables,lasts for the current shell session)
3. terraform.tfvars, then terraform.tfvars.json
4. *.auto.tfvars / *.auto.tfvars.json, in alphabetical order
5. -var / -var-file on the command line, which override everything else

## Azure authentication (azurerm provider)  

These variables have no TF_VAR_ prefix. The provider reads them directly.

1. export ARM_SUBSCRIPTION_ID="YOUR_SUB_ID"     # Azure subscription to deploy into
2. export ARM_TENANT_ID="YOUR_TENANT_ID"        # Entra ID tenant (directory) ID
3. export ARM_CLIENT_ID="YOUR_APP_ID"           # Service principal's application (client) ID
4. export ARM_CLIENT_SECRET="YOUR_SECRET"       # Service principal's client secret

## Complex types (list,map)

The value is written in HCL syntax, wrapped in single quotes:  
export TF_VAR_tags='{env="lab", owner="robert"}'  
export TF_VAR_subnets='["10.10.1.0/24","10.10.2.0/24"]'  
