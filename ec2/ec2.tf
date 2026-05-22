#create 2 ec2 instances

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-second-instance" {
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  tags = {
    Name = "mysecondinstance"
  }
}
resource "aws_instance" "my-third-instance" {
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  tags = {
    Name = "mythirdinstance"
  }
}
