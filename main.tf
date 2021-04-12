
resource ibm_resource_group resource_group {
  count = var.provision ? 1 : 0

  name  = var.resource_group_name

  timeouts {
    create  = "15m"
    destroy = "15m"
  }
}

data ibm_resource_group resource_group {
  depends_on = [ibm_resource_group.resource_group]

  name  = var.resource_group_name
}
