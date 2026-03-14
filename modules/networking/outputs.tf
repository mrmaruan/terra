output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "ID de la Virtual Network"
}

output "vnet_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "Nombre de la Virtual Network"
}