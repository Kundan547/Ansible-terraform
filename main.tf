provider "aws" {
  region     = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "vpc" {
  source = "./modules/vpc"
}

module "security_groups" {
  source = "./modules/security_groups"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source         = "./modules/ec2"
  public_subnet  = module.vpc.public_subnet
  private_subnet = module.vpc.private_subnet
  key_name       = var.key_name
  instance_type  = var.instance_type
  sg_ids = {
    web_sg = module.security_groups.web_sg_id
    db_sg  = module.security_groups.db_sg_id
  }
}

module "ecr" {
  source = "./modules/ecr"
}

module "lambda" {
  source          = "./modules/lambda"
  project_name    = var.project_name
  lambda_zip_file = "./modules/lambda/lambda_function.zip"
  mongo_uri       = var.mongo_uri
  depends_on      = [module.vpc]
}
