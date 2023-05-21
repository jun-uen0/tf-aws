# Deploying EC2 instance from local machine
# Ref: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build
# Terraform version: 1.4.6
# AWS CLI version: 2.11.7

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

