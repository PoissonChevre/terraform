# lesson 22 - first input variables
# terraform plan ==> "enter a value"
# terraform plan -var "application_name=jason"
# lesson 25


# lesson 38 - input variable validation
# change lenght => 4 & terraform apply -var-file ./env/prod.tfvars to see the error message
variable "application_name" {
  type = string
  validation {
    condition     = length(var.application_name) <= 12
    error_message = "Application name must be less than or equal to 12 caracters"
  }

}

# terraform plan -var "application_name=jason" -var "environment_name=jason"
variable "environment_name" {
  type = string
}

# lesson 32 - sensitive inputs & outputs
variable "api_key" {
  type      = string
  sensitive = true
}

# lesson 37 - input variables types
# terraform apply -var-file ./env/prod.tfvars
# --- Primitive types ---
# string => text: "hello"
# number => int or float: 42, 3.14
# bool   => true / false
# Automatic conversion when possible: "42" ↔ 42, "true" ↔ true

# --- Collection types (all elements same type) ---
# list  => ordered, duplicates allowed, index access: var.l[0] → list(string)
# set   => unordered, NO duplicates, NO index (var.s[0] → error) → set(string)
# map   => key/value, access by key: var.m["key"] → map(string)

# --- Structural types (elements can have different types) ---
# tuple => ordered, fixed length, index access: var.t[0]
#          → tuple([string, number, bool])
# object => named attributes, each with its own type, access: var.o.name
#           → object({ name = string, port = number, enabled = bool })
#           optional attribute: object({ name = string, port = optional(number, 80) })

# Useful gotchas:
# - toset(["a","a","b"])  → ["a","b"]   (removes duplicates, order not guaranteed)
# - To read an element from a set: tolist(var.s)[0]
# - for_each accepts a set of strings or a map, but NOT a list → for_each = toset(var.l)
# - count works with the index (count.index), but it's fragile: removing an element
#   in the middle shifts everything. for_each identifies each resource by its key → more stable.
# - A literal like ["a", 1, true] is a tuple; Terraform converts it to a list
#   automatically when the types allow it.

variable "instance_count" {
  type = number
  validation {
    condition     = var.instance_count > local.min_nodes && var.instance_count < local.max_nodes && var.instance_count % 2 != 0
    error_message = "Must be between 5 and 9 and never even!"
  }
}

# true - fales
variable "enabled" {
  type = bool
}

# list(string) - list(any) - list(number) - list (bool) 
# index [0,1,2,...]
variable "regions" {
  type = list(string)
}

# map = dictionnary with "exact" key
variable "region_instance_count" {
  type = map(string)
}

# list => allow duplicates,index >< set => no duplicates, no index
variable "region_set" {
  type = set(string)
}

# list => allow duplicates,index >< set => no duplicates, no index
variable "sku_settings" {
  type = object({
    kind = string
    tier = string
  })
}
