output "names" {
  description = "List of resource group names"
  value       = data.ibm_resource_group.resource_group.*.name
}

output "ids" {
  description = "List of ids of generated resource groups"
  value       = data.ibm_resource_group.resource_group.*.id
}

output "groups" {
  description = "List of group names and ids"
  value       = [
    for rg in data.ibm_resource_group.resource_group:
      {
        id   = rg.id
        name = rg.name
      }
  ]
}
