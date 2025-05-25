variable "ec2name"{
    type= string
}

resource "aws_instance" "ec2" {
  ami           = "<AMI_ID>"
  instance_type = "t3.micro"
  tags = {
      Name = var.ec2name
  }
}