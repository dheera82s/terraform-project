
provider "aws" {
  region = var.region
}


resource "aws_instance" "my-first-instance" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_types[1]


  tags = var.instance_tags

}