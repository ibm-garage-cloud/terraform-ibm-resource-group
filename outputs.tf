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
    for index in data.ibm_resource_group.resource_group:
      {
        id   = data.ibm_resource_group.resource_group[index].id
        name = data.ibm_resource_group.resource_group[index].name
      }
  ]
}
