variable "allowed_account_ids" {
  description = "List of allowed AWS account ids where resources can be created"
  type        = list(string)
  default     = []
}

variable "project_name" {
  type = any
}

variable "region" {
  type = string
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
  type = any
}