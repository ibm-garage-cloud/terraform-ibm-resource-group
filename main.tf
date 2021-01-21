provider "ibm" {
  version = ">= 1.17.0"
}

locals {
  resourceGroupNames = split(",", var.resourceGroupNames)
}

resource "ibm_resource_group" "resource_group" {
  count = length(local.resourceGroupNames)

  name  = local.resourceGroupNames[count.index]
}
