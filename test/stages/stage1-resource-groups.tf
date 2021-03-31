module "resource_groups" {
  source = "./module"

  names = split(",", "test-resource-group")
}
