# Terraform 101: The Ultimate Hands-On Guide, Azure Edition — Udemy

[Course page on Udemy](https://www.udemy.com/course/terraform-101-azure-edition/) · **Instructor:** Mark Tinderholt (Principal Architect, Microsoft) · **Status:** in progress

## About

A beginner course on Terraform with Azure (`azurerm`, `azuread` and `azapi` providers), taken to prepare the HashiCorp Terraform Associate certification.

In 12 hours of video, it covers the core Terraform workflow: the CLI, HCL, remote state in an Azure storage account, and managing several environments. The labs deploy Key Vault, Azure Monitor, a VNet, a Linux VM (SSH and Bastion) and Entra ID authentication.

## Course content

| # | Section |
|---|---|
| 1 | Getting Started: Meet Your Instructor and Discover Terraform |
| 2 | Key Concepts for Terraform and Infrastructure as Code |
| 3 | Set Up Your Windows Development Environment for Terraform |
| 4 | Terraform Fundamentals: Core Concepts and Syntax |
| 5 | Set Up and Access Your Azure Subscription |
| 6 | Getting Started with Azure and Terraform |
| 7 | Automate Foundational Azure Compute and Networking Services |
| 8 | Automating Identity & Access Management on Entra ID |
| 9 | Achieving Day Zero Feature Support with the AzAPI Terraform Provider |
| 10 | Conclusion |

## Labs in this folder

| Folder / file | What it shows |
|---|---|
| [lab01](./lab01/) | Main lab: providers and versions, input variables, validation, modules, outputs |
| [lab01/env](./lab01/env/) | One `.tfvars` file per environment (dev, test, prod) |
| [lab01/terraform_console.md](./lab01/terraform_console.md) | Test expressions with `terraform console` |
| [lab01/terraform.tfstate.d/workspace.md](./lab01/terraform.tfstate.d/workspace.md) | Workspaces: same code, one state per environment |
| [input_variables](./input_variables/) | Variable precedence (default, `TF_VAR_`, `.tfvars`, `-var`) and Azure `ARM_` variables |
