module "resource_groups" {
  source = "./module"

  names = split(",", var.new_resource_group)
}
