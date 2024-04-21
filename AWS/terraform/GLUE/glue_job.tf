# terraform block
terraform {
    required_version = ">= 1.0" # installed version of terraform
    required_providers {
        aws = {
        source  = "hashicorp/aws" # source of the provider
        version = "~> 5.0" # installed version of aws provider
        }
    }
}

# provider block
provider "aws" {
    region  = "us-east-1" # region where the resources will be created
}

# resource block

