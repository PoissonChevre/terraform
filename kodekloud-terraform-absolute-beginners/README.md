# Terraform for the Absolute Beginners with Labs — KodeKloud

[Course page on Udemy](https://www.udemy.com/course/terraform-for-the-absolute-beginners/) · **Provider:** KodeKloud · **Status:** completed (2026)

## About

A hands-on introduction to Infrastructure as Code with Terraform. Each topic ends with a lab in KodeKloud's browser environment, so no cloud account is needed.

It covers HCL, providers, variables, outputs, state (local and remote), lifecycle rules, data sources, `count` and `for_each`. Then it uses AWS (IAM, S3, DynamoDB, EC2) and moves on to provisioners, import, modules, functions and workspaces.

**Length:** 12 sections · 87 lectures · 4 h 36 min

## Course content

| # | Section | Topics |
|---|---|---|
| 1 | Introduction | Course overview |
| 2 | Infrastructure as Code | Problems of traditional IT, types of IaC tools, why Terraform |
| 3 | Getting Started with Terraform | Install, HCL basics, update and destroy |
| 4 | Terraform Basics | Providers, multiple providers, input variables, resource attributes, dependencies, outputs |
| 5 | Terraform State | Purpose of state, things to know about state |
| 6 | Working with Terraform | CLI commands, mutable vs immutable infrastructure, lifecycle rules, data sources, `count`, `for_each`, version constraints |
| 7 | Terraform with AWS | IAM users and policies, S3, DynamoDB |
| 8 | Remote State | S3 backend, state locking, `terraform state` commands |
| 9 | Terraform Provisioners | EC2 with Terraform, provisioners and how they behave |
| 10 | Import, Taint and Debugging | `taint`, debugging, `terraform import` |
| 11 | Terraform Modules | Writing modules, using modules from the Registry |
| 12 | Functions, Conditionals and Workspaces | Built-in functions, conditional expressions, workspaces |

## Labs in this folder

| Folder | What it shows |
|---|---|
| [variables](./variables/) | Variable types (`string`, `number`, `bool`, `list`, `map`, `set`), used by a `local_file` resource |

Most labs ran in the KodeKloud browser environment, so only a few are saved here.

## Takeaways

- Clear, well-structured course, with a practical lab after each topic.
- It gave me a solid base: the core workflow, state management and modules.

## Next steps

- Practice on my own: the [Terraform 101 Azure course](../udemy-terraform-101/) and labs in my homelab.
- Pass the **HashiCorp Terraform Associate** certification.
