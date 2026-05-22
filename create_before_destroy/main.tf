#create_before_destroy
#like already running the ec2 instance, nexr change the ami id then run an dbefire ec2 automatically deleted now new inmstance creted



provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "usa-instance" {

  ami = "ami-0236922087fa98b6e"

  instance_type = "t3.micro"
  tags = {
    Name = "usa-instance"
  }


lifecycle {
  create_before_destroy = true
}   
}