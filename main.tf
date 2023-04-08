locals {
  name = var.project_name

  allowed_account_ids = var.allowed_account_ids
}

provider "aws" {
  region = var.region
}

module "networking" {
  source = "./modules/networking"

  vpc_cidr          =  var.vpc_cidr
  private_subnets    = var.private_subnets
  public_subnets     = var.public_subnets
  aws_availability_zones = var.aws_availability_zones
  database_subnets  = var.database_subnets
}

module "autoscaling"{
  source = "./modules/autoscaling"
  project   = local.name
  vpc       = module.networking.vpc
  sg        = module.networking.sg
  db_config = module.database.config
  
}

module "database"{
  source = "./modules/database"
  project = local.name
  vpc = module.networking.vpc
  sg = module.networking.sg
  database_subnet_group = module.networking.database_subnet_group
}

