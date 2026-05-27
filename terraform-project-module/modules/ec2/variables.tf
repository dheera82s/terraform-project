variable "ami" {
    description = "The AMI ID to use for the EC2 instance"
  type        = string

}
variable "instance_type" {
    description = "type of instance to use"
  type        = string
  default     = "t3.micro"
}

variable "name" {
  type        = string
  default     = "my-project-instance"
}