resource "aws_instance" "web" {
  ami           = "<AMI_ID>"
  instance_type = "t3.micro"

  tags = {
    Name = "Test_ec2"
  }
}