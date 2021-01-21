# IBM Cloud Resource Group module

Terraform module to create one or more resource groups in an IBM Cloud account.

## Software dependencies

The module depends on the following software components:

### Command-line tools

- terraform - v12
- kubectl

### Terraform providers

- IBM Cloud provider >= 1.5.3

## Example usage

```hcl-terraform
module "ibm_resource_groups" {
  source = "github.com/ibm-garage-cloud/terraform-ibm-resource-group.git"

  resourceGroupNames = var.resource_group_name
}
```

