variable "region" {
  type    = string
  default = "us-east-1"
}


variable "instance_types" {
  type    = list(string)
  default = ["t3.micro", "t3.small", "t3.medium"]
}

variable "ami_id" {
  type    = string
  default = "ami-0236922087fa98b6e"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_tags" {
  type = map(string)
  default = {
    Name        = "map-test"
    project     = "terraformdemo"
    environment = "dev"
  }
}