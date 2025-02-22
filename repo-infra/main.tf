

module "rg_group"{
  source = "./modules/module-resource/"
  name     = "prueba1-resource-group"
  location = var.location
}
resource "azurerm_storage_account" "prueba1" {
  name                = "storagefranky01"
  resource_group_name = azurerm_resource_group.prueba1.name

  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  network_rules {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.1"]
    virtual_network_subnet_ids = [azurerm_subnet.prueba1.id]
  }

  tags = {
    environment = "staging"
  }
}