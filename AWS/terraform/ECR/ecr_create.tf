# terraform block: This block is used to define the version of terraform and the provider.
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# provider block: This block is used to define the provider and the region where the resources will be created.
provider "aws" {
  region = "us-east-1"
}

# resource block: This block is used to define the resource and its attributes.
resource "aws_ecr_repository" "lambda_function" {
  name                 = "lambda-function"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "lambda-function"
    CreatedBy   = "firatmelihyilmaz"
    Environment = "production"
  }
}
