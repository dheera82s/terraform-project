#terraform count argument
#create multiple similar resources using a single resouce block


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-second-instance" {
  count = 3  
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  tags = {
    Name = "mysecondinstance-${count.index}"
  }
}