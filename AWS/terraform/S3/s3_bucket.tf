# terraform block

terraform {
    required_version = ">= 1.0" # installed version of terraform
    required_providers {
        aws = {
        source  = "hashicorp/aws" # provider name
        version = "~> 5.0" # installed version of aws provider
        }
    }
}

# provider block
provider "aws" {
    region = "us-east-1" # region where the resources will be created
    profile = "default" # profile name from ~/.aws/credentials file
}

# resource block
resource "aws_s3_bucket" "my_bucket" {
    bucket = "data-lake-steam-projects01" # name of the bucket
    acl    = "private" # access control list
    tags = {
        Name = "data-lake-steam-projects01" # name of the bucket
        created_by = "firatmelihyilmaz" # created by terraform
        environment = "production" # environment name
    }
}

