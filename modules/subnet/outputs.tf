# Subnet Outputs (We will write for one web subnet and rest all we will ignore for now)
## Subnet Name 
output "subnet_name" {
  description = "WebTier Subnet Name"
  value = azurerm_subnet.main.name
}

## Subnet ID 
output "subnet_id" {
  description = "WebTier Subnet ID"
  value = azurerm_subnet.main.id
}

# Network Security Outputs
## Web Subnet NSG Name 
output "web_subnet_nsg_name" {
  description = "WebTier Subnet NSG Name"
  value = azurerm_network_security_group.web_subnet_nsg.name
}

## Web Subnet NSG ID 
output "web_subnet_nsg_id" {
  description = "WebTier Subnet NSG ID"
  value = azurerm_network_security_group.web_subnet_nsg.id
}
