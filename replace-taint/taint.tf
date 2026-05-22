#manual changes were made outside terraform
#command
#terraform raint<resource>
#old instance delete new instance create
#terraform plan replace=<resource>
#terraform apply replace=<resource>


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "usa-instance" {
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  tags = {
    Name = "usa-instance"
  }
}
