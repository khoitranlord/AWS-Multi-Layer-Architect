variable "project" {
  type    = string
  default = "my-project"  
}

variable "vpc_cidr" {
  type    = string
}

variable "private_subnets" {
  type    = list(string)
}

variable "public_subnets" {
  type    = list(string)
}

variable "aws_availability_zones" {
  type    = list(string)
}

variable "database_subnets" {
  type    = list(string)
  default = []
}