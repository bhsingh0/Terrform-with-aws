resource "aws_instance" "web" {
  ami           = "<AMI_ID>"
  instance_type = var.instance_type_map["web"]

  tags = {
    Name = var.instance_name
  }
}

variable instance_type_map {
  type = map(string)
  default = {
    "web" ="t2.nano"
    "db" ="t2.micro"
    "devops" ="t3.micro"
  }
}