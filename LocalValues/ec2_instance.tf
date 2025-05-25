locals {
  common_tags = {
    Team = "DevOps"
    Purpose = "Monitoring-App"
  }
}

resource "aws_instance" "dev" {
  ami           = "<AMI_ID>"
  instance_type = "t2.nano"
  # tags = {
  #   Team = "DevOps"
  #   Purpose = "Monitoring-App"
  # }
  tags = local.common_tags
}

resource "aws_instance" "prod" {
  ami           = "<AMI_ID>"
  instance_type = "t2.large"
  # tags = {
  #   Team = "DevOps"
  #   Purpose = "Monitoring-App"
  # } 
  tags = local.common_tags
}

resource "aws_ebs_volume" "volume" {
  availability_zone = "us-west-2a"
  size              = 40
  # tags = {
  #   Team = "DevOps"
  #   Purpose = "Monitoring-App"
  # }
  tags = local.common_tags
}