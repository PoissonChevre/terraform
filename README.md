# Terraform — Learning

My notes and labs from Terraform courses.

## What is Terraform?

Terraform is an **Infrastructure as Code** (IaC) tool by HashiCorp. You describe your infrastructure in `.tf` files (HCL language). Terraform then creates, changes or deletes it through the API of each platform, using **providers** (`aws`, `azurerm`, `kubernetes`, `proxmox`…).

```bash
terraform init      # Download the providers
terraform plan      # Show what will change
terraform apply     # Make the changes
terraform destroy   # Delete everything
```

## Why I'm learning it

Terraform is the infrastructure layer of a DevOps toolchain: **Terraform** creates the machines, **Ansible** configures them, **Docker / Kubernetes** run the apps.

Goals:

- Practice IaC on real infrastructure (cloud and homelab): reproducible, versioned, deleted when not in use.
- Pass the **HashiCorp Terraform Associate** certification.
- Build a portfolio of IaC projects.

## Courses

| Course | Provider | Status | Notes and labs |
|---|---|---|---|
| Terraform for the Absolute Beginners with Labs | KodeKloud | Completed (2026) | [kodekloud-terraform-absolute-beginners](./kodekloud-terraform-absolute-beginners/) |
| Terraform 101: The Ultimate Hands-On Guide, Azure Edition | Udemy | In progress | [udemy-terraform-101](./udemy-terraform-101/) |

## Repository layout

```
terraform/
├── kodekloud-terraform-absolute-beginners/
│   └── variables/          # Lab: variable types
└── udemy-terraform-101/
    ├── input_variables/    # Lab: variable precedence
    └── lab01/              # Main lab: tfvars, modules, workspaces
```

State files (`*.tfstate`) and the `.terraform/` folder are not in Git.

## Resources

- [Terraform documentation](https://developer.hashicorp.com/terraform/docs)
- [Terraform Registry](https://registry.terraform.io/browse/providers)
- [My Terraform cheat sheet](https://github.com/PoissonChevre/devops_cheat_sheets/tree/main/terraform)
