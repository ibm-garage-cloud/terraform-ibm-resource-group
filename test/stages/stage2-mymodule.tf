module "ibm_resource_group" {
  source = "./module"

  resourceGroupNames = var.new_resource_group
}
