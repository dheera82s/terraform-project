#terraform depends_on
#used to manually define dependencies b\w resources


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-first-instance" {
  
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  tags = {
    Name = "my-depends-instance"
  }
}

resource "aws_s3_bucket" "mybucket"{
    bucket = "anil-demo-bucket-461046"
    depends_on = [aws_instance.my-first-instance]
}