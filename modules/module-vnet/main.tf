 resource "azurerm_virtual_network" "vnet"{
  name                = var.name
  address_space       = local.address_space
  location            = var.location
  resource_group_name = azurerm_virtual_network.vnet.name
}

resource "azurerm_subnet" "subnet1" {
  name                 = var.name
  resource_group_name  = azurerm_resource_group.subnet1.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = local.address_prefixes
  
}

  