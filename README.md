# Terraform – Learning

Labs and notes from my Terraform learning path.

## What is Terraform?

Terraform is an **Infrastructure as Code** tool by HashiCorp. You describe your infrastructure in declarative `.tf` files (HCL), and Terraform creates, updates or destroys it through each platform's API (`azurerm`, `aws`, `kubernetes`…).

```bash
terraform init → plan → apply → destroy
```

📖 [Terraform documentation](https://developer.hashicorp.com/terraform/docs) · [azurerm provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)

## Why I'm learning it

I'm moving into a **DevOps** role, and Terraform covers the infrastructure layer of my stack: **Terraform** provisions, **Ansible** configures, **Docker/Kubernetes** run the apps.

Goals:
- Rebuild my **Azure** (AZ-104) labs as code: reproducible, versioned, destroyed after each session.
- Pass the **HashiCorp Terraform Associate** certification.
- Build a portfolio of IaC projects.
