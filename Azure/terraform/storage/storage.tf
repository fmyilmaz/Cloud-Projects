# create blob storage account

# terraform block
terraform {
  required_version = "~> 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

# provider block
provider "azurerm" {
  features {}
  subscription_id = "fff38b55-034c-4902-afb7-fe3bedb16ae0"
}

# resource block
resource "azurerm_storage_account" "storage_account" {
  name                     = "datalakesteamprojects01"
  resource_group_name      = "data-lake-rg"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    Name        = "data-lake-steam-projects01"
    created_by  = "firatmelihyilmaz"
    environment = "production"
  }
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "raw-data"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}