data "namep_azure_name" "lt" {
  name     = "main"
  location = var.location
  type     = "azurerm_load_test"
}

resource "azurerm_load_test" "main" {
  name                = data.namep_azure_name.lt.result
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location

  identity {
    type = "SystemAssigned"
  }
}