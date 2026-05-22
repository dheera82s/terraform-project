provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-second-instance" {
  for_each = toset(["dev","qa","pod"])
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  tags = {
    Name = each.key
  }
}