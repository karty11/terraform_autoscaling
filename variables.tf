variable "aws_region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  default = "10.20.0.0/16"
}

variable "subnets_cidr" {
  type = list(any)
  default = ["10.20.1.0/24", "10.20.2.0/24"]
}

variable "azs" {
  type = list(any)
  default = ["us-west-2a", "us-west-2b"]
}

variable "webservers_ami" {
  default = "ami-0dac6b39723a16e20"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "rt" {
  default = "publicRouteTable"
}