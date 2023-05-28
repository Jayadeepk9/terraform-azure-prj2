resource "azurerm_resource_group" "dev" {
  name     = var.rgname
  location = var.rgloc
}

resource "azurerm_virtual_network" "vnet" {

  name                = var.vnet
  location            = azurerm_resource_group.dev.location
  resource_group_name = azurerm_resource_group.dev.name
  address_space       = var.add_space

}

resource "azurerm_subnet" "dev" {
  for_each             = var.subnets
  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.dev.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = each.value.address_prefixes
  depends_on           = [azurerm_virtual_network.vnet]
}





 