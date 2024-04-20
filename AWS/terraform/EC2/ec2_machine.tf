# terraform block
terraform {
    required_version = ">= 1.0" # installed version of terraform
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0" # installed version of aws provider
        }
    }
}

# provider block
provider "aws" {
    region = "us-east-1" # region where the resources will be created
}

# resource block
resource "aws_instance" "my_instance" {
    ami = "ami-0fc61db8544a617ed" # amazon linux 2 AMI
    instance_type = "t2.micro" # instance type
    tags = {
        Name = "my-instance" # tag name
        Environment = "dev" # tag value
        created_by = "firatmelihyilmaz" # tag value
        Department = "IT" # tag value
    }
  
}