#terraform statefile.tfstate
#we can store terraform tfstate files in s3


provider "aws" {
  region = "us-east-1"
}

terraform{
  backend "s3"{
    bucket = "anil-tf-bucket"
    key = "central.state"
    region = "us-east-1"
  }

}

resource "aws_instance" "usa-instance" {
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  tags = {
    Name = "usa-instance"
  }
}