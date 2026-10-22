# Terraform – Learning

Labs and notes from my Terraform learning path.

## What is Terraform?

Terraform is an **Infrastructure as Code** tool by HashiCorp. You describe your infrastructure in declarative `.tf` files (HCL), and Terraform creates, updates or destroys it through each platform's API (`azurerm`, `aws`, `kubernetes`…).

```bash
terraform init → plan → apply → destroy
```

📖 [Terraform documentation](https://developer.hashicorp.com/terraform/docs) · [Terraform registry](https://registry.terraform.io/browse/providers)

## Why I'm learning it

I'm interested in DevOps and building hands-on skills to work in the field. Terraform covers the infrastructure layer: **Terraform** provisions, **Ansible** configures, **Docker/Kubernetes** run the apps.  

Goals:

- Practice IaC on real infrastructure (cloud and homelab): reproducible, versioned, and torn down when not in use.
- Pass the **HashiCorp Terraform Associate** certification.
- Build a portfolio of IaC projects.

## Courses

- [Terraform fot the absolute beginners with labs - KodeKloud](./kodekloud-terraform-absolute-beginners/)
- [Terraform on Azure – Mark Tinderholt](./udemy-terraform-101/)