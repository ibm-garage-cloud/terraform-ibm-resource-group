module "resource_groups" {
  source = "./module"

  resource_group_name = "test-resource-group"
  ibmcloud_api_key    = var.ibmcloud_api_key
}
