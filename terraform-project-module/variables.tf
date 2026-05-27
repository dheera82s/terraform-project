variable "region" {
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami" {
  type        = string
 
}

variable "ec2_instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "s3_bucket_name" {
  type        = string
}

variable "ec2_instance_name" {
  type        = string
  default     = "dev-ec2-instance"
}