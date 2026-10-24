# lesson 33_35 - passing input variables using shell

export TF_VAR_api_key="private"  
terraform plan  
unset TF_VAR_api_key # to remove the api_key  

powershell => $env:TF_VAR_API_KEY="foo"  
