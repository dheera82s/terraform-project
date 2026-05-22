# create 2 instances different locations 
# 1 instance is us-east-1 anode one is ap-south-1

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

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "mumbai-instance" {
  
  ami           = "ami-09ed39e30153c3bf9"
  provider = aws.mumbai 
  instance_type = "t3.micro"
  tags = {
    Name = "mumbai-instance"
  }
}