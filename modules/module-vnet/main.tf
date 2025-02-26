
resource "azurerm_virtual_network" "vnet"{
  name                = var.name
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.vnet.name
}

resource "azurerm_subnet" "prueba1" {
  name                 = "subnetname"
  resource_group_name  = azurerm_resource_group.prueba1.name
  virtual_network_name = azurerm_virtual_network.prueba1.name
  address_prefixes     = ["10.0.2.0/24"]
  service_endpoints    = ["Microsoft.Sql", "Microsoft.Storage"]
}

  