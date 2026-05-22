#you manually stopped an ec2
#some changes an SG rule
#a tag was addedinstance type changed aws console



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