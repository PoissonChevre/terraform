# lesson 26 - defining providers
# providers.tf (old convention) | versions.tf

terraform { 
  required_providers {
    random = {
        source = "hashicorp/random"
#       version= "= 3.6.3"   exacte version
        version= ">= 3.6.3"  # any version 3.6.x 3.7.x 4.x.x more risky
#       version= "~> 3.6.3"  max 3.6.x
    }
  }
}