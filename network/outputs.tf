output "virtual_network_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The generated virtual network"
}

output "subnet_name" {
  value       = azurerm_subnet.subnet.name
  description = "The generated subnet's name"
}

output "subnet_id" {
  value       = azurerm_subnet.subnet.id
  description = "The generated subnet's ID"
}

output "vnet_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The generated virtual network"
}

