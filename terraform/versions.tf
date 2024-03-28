terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
      version = ">= 0.1.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.45.0"
    }
  }
}