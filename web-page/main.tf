#we launch web-page,goto ec2 instance copy the public ip and hit thr browser

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "usa-instance" {
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  key_name = "anil-key"
  vpc_security_group_ids = ["sg-0a852fb416cbf186c"]
  user_data = file("${path.module}/userdata.txt")

  
  tags = {
    Name = "userdata-instance"
  }
}