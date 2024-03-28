terraform {
  backend "azurerm" {}
}

provider "azuredevops" {
  org_service_url = "https://dev.azure.com/jasojohnson"
}