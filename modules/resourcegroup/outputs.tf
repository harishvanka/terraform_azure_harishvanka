output "resource_group_id" {
    value = [for rg in azurerm_resource_group.main : rg.id]
    description = "The resource group object id"
}

output "resource_group_name" {
    value = [for rg in azurerm_resource_group.main : rg.name]
    description = "The resource group object name"
}

output "rg_location" {
    value = [for rg in azurerm_resource_group.main : rg.location]
    description = "Resource group location"
}