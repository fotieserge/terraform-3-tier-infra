module "vpc" {
  source = "./vpc"
  tags = local.project_tags
}

module "rds" {
  source = "./rds"
  tags = local.project_tags
  private_subnet1 = module.vpc.public_subnet1_id
  private_subnet2 = module.vpc.private_subnet2_id
  vpc_id = module.vpc.vpc_id
  vpc_cidr = "10.0.0.0/16"
  }

  # module "security-gp" {
  #   source = "./security-gp"
  #   vpc_id = module.vpc.vpc_id
  #   tags = local.project_tags
  #   cidr_block = "0.0.0.0/0"  
  # }

# module "webserver" {
#   source = "./webserver"
#   security_groups = module.security-gp.security_gp_id
#   subnet_id = module.vpc.public_subnet1_id
#   tags = local.project_tags 
# }

# module "s3" {
#   source = "./s3"
#   tags = local.project_tags
  
# }

module "ec2" {
  source = "./ec2"
  subnet_id = module.vpc.public_subnet1_id
  vpc_id = module.vpc.vpc_id
  tags = local.project_tags
  
}
