data "namep_azure_name" "rg" {
  name     = "tf"
  location = var.location
  type     = "azurerm_resource_group"
}

resource "azurerm_resource_group" "main" {
  name     = data.namep_azure_name.rg.result
  location = var.location
}