# Lesson 40 - Using workspaces

terraform apply -var-file ./env/dev.tfvars -auto-approve  
terraform apply -var-file ./env/prod.tfvars -auto-approve  
terraform apply -var-file ./env/test.tfvars -auto-approve  

## Commands

terraform workspace list            # list workspaces (* = current)  
terraform workspace show            # show current workspace  
terraform workspace new dev         # create + switch to it  
terraform workspace select dev      # switch to existing workspace  
terraform workspace delete dev      # delete (must not be current, state must be empty, or use -force)  

## Key points

- "default" workspace always exists and can't be deleted
- Same code, separate state per workspace
- Local state stored in: terraform.tfstate.d/<workspace>/terraform.tfstate
  (default workspace → terraform.tfstate at root)

### Use in code: terraform.workspace

resource "aws_instance" "web" {  
  instance_type = terraform.workspace == "prod" ? "t3.large" : "t3.micro"  
  tags = {  
    Name = "web-${terraform.workspace}"  
  }  
}

## Pattern with a map

variable "instance_type" {  
  type = map(string)  
  default = {  
    dev  = "t3.micro"  
    prod = "t3.large"  
  }  
}  
 → var.instance_type[terraform.workspace]

## Limits

- Same backend + same code for all workspaces → not ideal for strong isolation (prod vs dev)
- Easy to apply to the wrong workspace → always check with `terraform workspace show`
- For real prod/dev separation, many teams prefer separate directories or backends instead