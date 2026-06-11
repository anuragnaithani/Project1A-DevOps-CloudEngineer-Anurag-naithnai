module "vpc" {
  source      = "./modules/vpc"
  environment = "prod"
  vpc_cidr    = "10.0.0.0/16"
}

module "eks" {
  source             = "./modules/eks"
  public_subnet_a_id = module.vpc.public_subnet_a_id
  public_subnet_b_id = module.vpc.public_subnet_b_id
}
