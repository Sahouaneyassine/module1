# Terraform `mod-azurerm-resource-group` module

Create Azure Resource Group following CHANEL Azure Cloud Governance framework

## Why?

CHANEL Azure Cloud Governance defines a set of pratices and requirements to be enforced over the deployed ressources.

This module will help to maintain and ensure that this set defined from GBL Governance definition is made available on all deployed ressources.

## Arguments

- `project`                 - (String) Project technical name
- `region`                  - (String) Resource deployment region
- `environment`             - (String) Resource deployment environment
- `location`                - (String) Azure Region where Resource Group will be deployed
- `tags`                    - (String) Chanel Azure Governance TAGS (map(any)) - mod-azure-gov-tags module should be used

- `name`                    - (String) source group name (only when enforced)

## Outputs

- `id`                      - (String) Resource Group id
- `name`                    - (String) Resource Group Name
- `location`                - (String) Azure Region where Resource Group has been deployed

## Example

```hcl-terraform
module "mod-azurerm-resource-group" {
  source = "git@ssh.dev.azure.com:v3/lpl-sources/Terraform/mod-azurerm-resource-group"

  project     = var.project
  region      = var.region
  environment = var.environment  
  location    = var.location
  tags        = var.tags
}

# Get resource group reference elsewhere
locals {
  resource_group_id = "${module.mod-azurerm-resource-group.id}"
}
```
