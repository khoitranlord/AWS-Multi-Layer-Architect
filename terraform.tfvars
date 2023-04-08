allowed_account_ids = ["399170908036"]

project_name = "lab1"
region   = "us-east-2"

vpc_cidr               = "10.0.0.0/16"
private_subnets        = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets         = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
aws_availability_zones = ["us-east-2a", "us-east-2b", "us-east-2c"]

database_subnets = ["10.0.1.0/24", "10.0.2.0/24"]

