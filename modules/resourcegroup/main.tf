resource "azurerm_resource_group" "main" {
  count    = var.resource_group_count
  name     = var.resource_group_name
  location = var.location
  tags     = local.tags
}