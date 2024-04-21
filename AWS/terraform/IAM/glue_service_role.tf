# terraform block
terraform {
  required_version = "~> 1.0" # installed version of terraform
  required_providers {
    aws = {
      source  = "hashicorp/aws" # source of the provider
      version = "~> 5.0" # installed version of the provider
    }
  }
}

# provider block
provider "aws" {
  region  = "us-east-1" # region where the resources will be created
}

# resource block
# AWS Glue service role for the Glue job to assume s3 access

resource "aws_iam_role" "glue_service_role" {
  name = "glue-service-role"
  description = "Role for Glue service to assume"
    assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
                "Service": "glue.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

# AWS Glue service role for the Glue job to assume s3 access
resource "aws_iam_role_policy_attachment" "glue_service_role_policy_attachment" {
  role       = aws_iam_role.glue_service_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
}