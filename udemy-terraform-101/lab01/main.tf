# https://registry.terraform.io/browse/providers
# lesson 20 - first resource 

# lesson 39 - adding comment
// comment with //
# comment with #
/* 
comment multiple lines
*/

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

# lesson 23 - locals
# terraform apply  -var "application_name=marksblog" -var "environment_name=dev" -auto-approve
# lesson 27
locals {
  environment_prefix = "${var.application_name}-${var.environment_name}-${random_string.suffix.result}"
}

# lesson 41 - list & count
// list => count 
resource "random_string" "list" {
  count   = length(var.regions)
  length  = 6
  upper   = false
  special = false
}

# lesson 42 - maps & for each
// map => for_each
resource "random_string" "map" {
  for_each = var.region_instance_count
  length   = 6
  upper    = false
  special  = false
}

# lesson 43 -  booleans & conditionnals
/*
# Conditional expressions

## Syntax
condition ? true_value : false_value

## Examples
instance_type = var.env == "prod" ? "t3.large" : "t3.micro"
name          = var.name != "" ? var.name : "default-name"

## Pattern: create a resource or not → count = cond ? 1 : 0
resource "aws_instance" "bastion" {
  count = var.create_bastion ? 1 : 0     # true → 1 instance, false → none
  ami           = "ami-123"
  instance_type = "t3.micro"
}

# With workspaces
count = terraform.workspace == "prod" ? 3 : 1

## Referencing a conditional resource (count → it's a list)
aws_instance.bastion[0].id                 # error if count = 0!
one(aws_instance.bastion[*].id)            # safe → returns null if 0

## Gotchas
- Both values must have the same type (or be convertible):
  cond ? "a" : 1   → converted to string
  cond ? [] : {}   → error
- Operators: ==, !=, <, >, <=, >=, &&, ||, !
- Same with for_each: for_each = var.enabled ? toset(var.names) : toset([])
*/

resource "random_string" "if" {
  count   = var.enabled ? 1 : 0
  length  = 6
  upper   = false
  special = false
}

# lesson 44 - using the terraform module registry 
# https://registry.terraform.io/modules/hashicorp/module/random/latest
# terraform init
# .terraform/modules

module "alpha" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}

module "bravo" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}

# lesson 45 - creating your first module
module "charlie" {
  source = "./modules/rando"
  length = 8
}

# lesson 46 - module encapsulation
/*
module "regionA" {
  source         = "./modules/regional-stamp"
  region         = "westus"
  name           = "foo"
  min_node_count = 4
  max_node_count = 8
}
module "regionB" {
  source         = "./modules/regional-stamp"
  region         = "eastus"
  name           = "bar"
  min_node_count = 2
  max_node_count = 6
}
*/

# lesson 47 -  region count index
locals {
  regional_stamps = [
    {
      region         = "westus"
      name           = "foo"
      min_node_count = 4
      max_node_count = 8
    },
    {
      region         = "eastus"
      name           = "bar"
      min_node_count = 4
      max_node_count = 8
    }
  ]
}

module "regional_stamps" {
  source = "./modules/regional-stamp"

  count = length(local.regional_stamps)

  region         = local.regional_stamps[count.index].region
  name           = local.regional_stamps[count.index].name
  min_node_count = local.regional_stamps[count.index].min_node_count
  max_node_count = local.regional_stamps[count.index].max_node_count
}

# lesson 48 -  region for_each.Value

locals {
  regional_stamps2 = {
    "foo" = {
      region         = "westus"
      min_node_count = 4
      max_node_count = 8
    },
    "bar" = {
      region         = "eastus"
      min_node_count = 4
      max_node_count = 8
    }
  }
}

module "regional_stamps2" {
  source = "./modules/regional-stamp"

  for_each = local.regional_stamps2

  /* first proposal
  region         = local.regional_stamps2[each.key].region
  name           = each.key
  min_node_count = local.regional_stamps2[each.key].min_node_count
  max_node_count = local.regional_stamps2[each.key].max_node_count
  */
  region         = each.value.region
  name           = each.key
  min_node_count = each.value.min_node_count
  max_node_count = each.value.max_node_count
}
