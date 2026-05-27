variable "region" {
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  type        = string
  default     = "ami-00e801948462f718a"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
} 