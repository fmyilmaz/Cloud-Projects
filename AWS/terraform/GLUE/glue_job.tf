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
resource "aws_glue_job" "glue_job" {
    name = "raw_data_processing_job" # name of the glue job
    description = "gather data from source and process it" # description of the glue job
    role_arn = "arn:aws:iam::471112935345:role/glue-service-role" # arn of the glue service role
    command {
        name = "glueetl" # name of the command
        script_location = "s3://aws-glue-assets-471112935345-us-east-1/scripts/glue_job.py" # location of the script
    }
    default_arguments = {
        "--job-language" = "python" # job language
        "--job-bookmark-option" = "job-bookmark-enable" # job bookmark option
    }
    execution_property {
        max_concurrent_runs = 1 # maximum concurrent runs
    }
    glue_version = "4.0" # glue version
    number_of_workers = 2 # number of workers
    max_retries = 0 # maximum retries
    worker_type = "G.1X" # worker type
    security_configuration = "" # security configuration
    tags = {
        Name = "glue-job" # name of the glue job
        created_by = "firatmelihyilmaz" # created by terraform
        environment = "production" # environment name
    }
  
}
