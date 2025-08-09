terraform {
backend "azurerm" {
  resource_group_name  = "sanjayrg"
  storage_account_name = "sanjaysingraur3"
  container_name       = "sanjaycontainer3"
  key                  = "mango.tfstate"
}
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
  name     = "mango-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "mangostg" {
  name                     = "mangostorage"
  resource_group_name      = azurerm_resource_group.mango.name
  location                 = azurerm_resource_group.mango.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
