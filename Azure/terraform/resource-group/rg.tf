# create azure resource group

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
resource "azurerm_resource_group" "resource_group" {
  name     = "data-lake-rg"
  location = "East US"
  tags = {
    Name        = "data-lake-rg"
    created_by  = "firatmelihyilmaz"
    environment = "production"
  }
}