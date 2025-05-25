resource "aws_instance" "web" {
  ami           = "<AMI_ID>"
  instance_type = "t2.micro"

  tags = {
    #Name = "my-instance-${count.index + 1}"
    Name = var.instance_name[count.index]
  }
  count =3
}