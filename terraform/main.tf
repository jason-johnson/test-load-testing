terraform {
  backend "azurerm" {}
}

provider "azuredevops" {
  org_service_url = "https://dev.azure.com/jasojohnson"
  personal_access_token = var.AZURE_DEVOPS_PAT
}