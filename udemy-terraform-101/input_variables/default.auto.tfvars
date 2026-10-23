# lesson 36 - deep dive input variable selection order

foo = "yellow"

# .auto.tfvars priority over .tfvars
# terraform apply -auto-approve => foo = "yellow"

# comment # foo = "yellow" ==> back to foo = "green"

# terraform apply -var-file custom.tfvars -var foo=blue -auto-approve 
#    yellow       |        red            |        blue (output)      VARIABLE PRECEDENCE 

# terraform apply -var foo=blue -var-file custom.tfvars -auto-approve
#    yellow        |        blue            |        red (output)      VARIABLE PRECEDENCE command line overwrite !!!

# export TF_VAR_foo=purple
# echo $TF_VAR_foo => purple
# terraform apply -auto-approve => foo="yellow" 
# comment # foo = "yellow" && comment # foo = "green"
# terraform apply -auto-approve => foo="purple" lowest priority
