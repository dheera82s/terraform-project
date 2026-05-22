# at a time 20 instances created but only created 10
# use thgis command 
# terraform apply parallelism=20



provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "usa-instance" {
  count         = 15
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  tags = {
    Name = "usa-instance"
  }
}
