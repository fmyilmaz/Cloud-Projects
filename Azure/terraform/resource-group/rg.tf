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
  subscription_id = "894400d6-314d-4748-887c-867cc0285e2c"
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