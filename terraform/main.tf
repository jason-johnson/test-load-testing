terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

data "azurerm_client_config" "current" {}


provider "namep" {
  slice_string                 = "LOADTST DEMO"
  default_location             = var.location
  default_nodash_name_format   = "#{SLUG}#{TOKEN_1}#{TOKEN_2}#{SHORT_LOC}#{NAME}#{BRANCH}"
  default_resource_name_format = "#{SLUG}-#{TOKEN_1}-#{TOKEN_2}-#{SHORT_LOC}-#{NAME}#{-BRANCH}"

  custom_resource_formats = {
    azurerm_load_test = "lt-#{TOKEN_1}-#{TOKEN_2}-#{SHORT_LOC}-#{NAME}#{-BRANCH}"
  }

  extra_tokens = {
    branch = var.branch
  }
}