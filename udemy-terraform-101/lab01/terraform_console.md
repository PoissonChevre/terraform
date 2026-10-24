# Terraform console

Interactive REPL to evaluate expressions against your config + current state.

```bash
terraform console                              # start (Ctrl+C / exit to quit)
terraform console -var-file ./env/prod.tfvars  # load variable values
echo 'var.application_name' | terraform console  # one-shot, scriptable
```

```hcl
> var.application_name          # "marksblog" (has a default)
> random_string.suffix.result   # read from state → "o1hjv5" (needs a prior apply)
> local.environment_prefix      # "marksblog-prod-o1hjv5"
> toset(["a","a","b"])          # test functions / expressions
```

- `(known after apply)` = a value is missing: variable without default and no -var-file, or resource not yet created
- Without -var-file, `var.environment_name` is unknown → every local using it is unknown too
- Read-only: console never changes infrastructure or state
