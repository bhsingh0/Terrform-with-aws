resource "aws_instance" "dev" {
  count = var.is_dev_env == true ? 1 : 0
  ami           = "<AMI_ID>"
  instance_type = "t2.nano"
  tags = {
    Name = "dev-ec2"
  }
}

resource "aws_instance" "prod" {
  count = var.is_dev_env == false ? 2 : 0
  ami           = "<AMI_ID>"
  instance_type = "t2.large"
  tags = {
    Name = "prod-ec2"
  } 
}