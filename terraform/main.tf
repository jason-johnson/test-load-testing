terraform {
  backend "azurerm" {}
}

provider "azuredevops" {
  use_msi = true
}