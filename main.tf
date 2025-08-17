terraform {
backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
  features {}
subscription_id = "9a19641f-a0da-455d-9b90-51dc0d0cdfee"
}

resource "azurerm_resource_group" "mango" {
  name     = "mango-rg1"
  location = "West Europe"
}


