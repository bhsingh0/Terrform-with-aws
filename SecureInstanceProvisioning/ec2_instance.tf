terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
}

provider "aws" {}

resource "aws_instance" "web" {
  ami           = "<AMI_ID>"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_ec2"
  }
}
