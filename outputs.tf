output "resourceGroupNames" {
  description = "List of resource group names"
  value       = local.resourceGroupNames
  depends_on  = [data.ibm_resource_group.resource_group]
}
