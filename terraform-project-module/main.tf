provider "aws" {
  region = "us-east-1"
}

module "ec2_instance_type" {
  source = "./modules/ec2"

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  name          = var.ec2_instance_name
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.s3_bucket_name
}