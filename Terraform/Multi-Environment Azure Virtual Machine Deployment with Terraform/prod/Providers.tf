terraform {

  required_version = ">0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = ""
  tenant_id       = ""
}
#remote backend config
