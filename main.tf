terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "d8dc14ed-3276-442c-a5a9-1b3c76eb6c45"
  features {}
}



resource "azurerm_storage_account" "example" {
  name                     = "devmrb2411st01"
  resource_group_name      = "demoapp001-dev"
  location                 = "West Europe"
  account_tier             = "Standard" # or "Premium"
  account_replication_type = "LRS"      # Locally-redundant storage
  access_tier              = "Cool"     # Hot or Cool
 
}


