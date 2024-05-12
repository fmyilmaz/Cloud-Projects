# terraform block
terraform {
  required_version = "~> 1.0" # installed version of terraform
  required_providers {
    aws = {
        source = "hashicorp/aws"
      version = "~> 5.0" # installed version of the provider
    }
  }
}

# provider block
provider "aws" {
  region = "us-east-1" # region where the resources will be created
}

# resource block
resource "aws_iam_role" "lambda_service_role" {
  name = "lambda-service-role"
  description = "Role for Lambda service to assume"
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
                "Service": "lambda.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "lambda_service_role_policy_attachment" {
  role = aws_iam_role.lambda_service_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_iam_role_policy_attachment" "lambda_service_role_policy_attachment_2" {
  role = aws_iam_role.lambda_service_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaRole"
}

resource "aws_lambda_function" "container_lambda" {
  function_name = "container_lambda"
  role = aws_iam_role.lambda_service_role.arn
  image_uri = "905418305542.dkr.ecr.us-east-1.amazonaws.com/my-lambda-function:latest"
  package_type = "Image"
  timeout = 300
  memory_size = 256
  runtime = "provided"
  environment {
    variables = {
      "ENV_VAR" = "value"
    }
  }
  tags = {
    Name = "container_lambda"
    Environment = "Production"
    created_by = "firatmelihyilmaz"
  }
}