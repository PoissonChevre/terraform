# lesson 36 - deep dive input variable selection order

foo = "red"

# back to foo = "green"
# terraform apply -var-file custom.tfvars -auto-approve => foo = "red"

# terraform apply -var foo=blue -auto-approve => foo = "blue"

# terraform apply -var-file custom.tfvars -var foo=blue -auto-approve 
#    green        |        red            |        blue (output)      VARIABLE PRECEDENCE 

# terraform apply -var foo=blue -var-file custom.tfvars -auto-approve
#    green        |        blue            |        red (output)      VARIABLE PRECEDENCE command line overwrite !!!