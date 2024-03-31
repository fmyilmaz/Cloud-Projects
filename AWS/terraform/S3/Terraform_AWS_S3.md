
# Terraform AWS S3 Bucket Creation Tutorial

This tutorial guides you through the process of creating an AWS S3 bucket using Terraform. We'll cover everything from setting up your Terraform environment to writing the Terraform configuration and applying it to create the S3 bucket.

## Prerequisites

Before you begin, ensure you have the following:
- An AWS account.
- Terraform installed on your machine. For installation instructions, see [Terraform's official documentation](https://www.terraform.io/downloads.html).
- Your AWS access key and secret key. For more information on creating these, see [AWS documentation](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys).

**Important:** Do not embed AWS credentials directly in your Terraform files. Use environment variables or the AWS credentials file instead.

## Step 1: Configure AWS Provider

Create a new directory for your Terraform project and navigate into it:

```sh
mkdir terraform-s3-project
cd terraform-s3-project
```

Create a file named `provider.tf` and add the following Terraform configuration to specify the AWS provider:

```hcl
provider "aws" {
  region = "us-east-1"
}
```

## Step 2: Define the S3 Bucket Resource

Create a file named `s3_bucket.tf` and add the following configuration to define your S3 bucket:

```hcl
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345"
  acl    = "private"

  tags = {
    Name        = "MyBucket"
    Environment = "Production"
    CreatedBy   = "YourName"
  }
}
```

Replace `my-unique-bucket-name-12345` with your desired unique bucket name and adjust the tags as necessary.

## Step 3: Initialize Terraform

Run the following command to initialize Terraform in your project directory. This command sets up Terraform to run your configuration:

```sh
terraform init
```

## Step 4: Create a Terraform Execution Plan

Generate an execution plan with:

```sh
terraform plan
```

This command shows what actions Terraform will take to change your infrastructure. Review the plan to ensure it's correct.

## Step 5: Apply Your Configuration

Apply your Terraform configuration to create the S3 bucket:

```sh
terraform apply
```

Confirm the action when prompted by typing `yes`.

## Step 6: Verify the Bucket Creation

Check the AWS Management Console to see your new S3 bucket. You can also use the AWS CLI:

```sh
aws s3 ls
```

## Cleanup

When you no longer need the S3 bucket, you can remove it and all its contents with Terraform:

```sh
terraform destroy
```

Confirm the action when prompted to avoid leaving unused resources.

