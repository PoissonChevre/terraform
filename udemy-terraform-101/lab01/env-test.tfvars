# lesson 31 - managing input variables files
# all in the same directory | group them with a prefix env-x.tfvars
# terraform apply -var-file env-test.tfvars -auto-approve
# terraform apply -var-file ./env/test.tfvars -auto-approve

environment_name = "test"
