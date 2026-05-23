provider "aws" {
  region = "us-east-1"
}

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.3.0"
        }
    }
}

resource "aws_instance" "usa-instance" {
  count = 3  
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
 

  
  tags = {
    Name = "userdata-instance"
  }
}