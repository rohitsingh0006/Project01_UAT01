terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.24.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rguatstrg1709"
    storage_account_name = "uatstrg1709"
    container_name       = "uatcontainer1709"
    key                  = "uat-tfstate"
  }
}


provider "azurerm" {
    features {}
    subscription_id = "67bc5246-befd-4265-a0e6-6b7f6196364f"
}

resource "azurerm_resource_group" "rg" {
    name = "myuatrg"
    location ="centralindia"
}
