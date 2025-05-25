terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "<AccessKey>"
  secret_key = "<Secret_Key>"
}