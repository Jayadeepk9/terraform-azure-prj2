output "rg_name" {
  value = azurerm_resource_group.dev.name
}
output "rg_location" {
  value = azurerm_resource_group.dev.location
}
output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}
