#explore tf_logs
#export TF_LOG=DEBUG
#export TF_LOG_PATH="terraform.log"

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