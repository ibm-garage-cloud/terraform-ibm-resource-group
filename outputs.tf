output "names" {
  description = "List of resource group names"
  value       = data.ibm_resource_group.resource_group.*.name
  depends_on  = [ibm_resource_group.resource_group]
}

output "ids" {
  description = "List of ids of generated resource groups"
  value       = data.ibm_resource_group.resource_group.*.id
  depends_on  = [ibm_resource_group.resource_group]
}

output "groups" {
  description = "List of group names and ids"
  value       = data.ibm_resource_group.resource_group
  depends_on  = [ibm_resource_group.resource_group]
}
