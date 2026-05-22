#create one ec2 instance

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-first-instance" {
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  tags = {
    Name = "myfirstinstance"
  }
}

