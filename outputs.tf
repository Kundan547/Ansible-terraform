output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet" {
  value = module.vpc.public_subnet
}

output "private_subnet" {
  value = module.vpc.private_subnet
}

output "web_sg_id" {
  value = module.security_groups.web_sg_id
}

output "db_sg_id" { 
  value = module.security_groups.db_sg_id
}

output "web_instance_id" {
  value = module.ec2.web_instance_id
}

output "db_instance_id" {
  value = module.ec2.db_instance_id
}

output "ecr_frontend_repo_url" {
  value = module.ecr.frontend_repo_url
}

output "ecr_backend_repo_url" {
  value = module.ecr.backend_repo_url
}