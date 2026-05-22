#import control existing resources created outside terraform
#terraform plan -generate-config-out=ec2.tf 




provider "aws"{
    region = "us-east-1"
}

resource "aws_instance "myinstance{
   ami = "   "
   instance_type = "t3.micro"

}

import{
    to = aws_instance.myinstance
    id = "   "
}
