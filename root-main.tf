

module "vpc" {

  source = "./modules/networking/vpc"
  
  vpc_cidr = var.vpc_cidr
  env = var.environment
  region = var.region
    
}

module "public_subnets" {

  source = "./modules/networking/subnets/public"
  
  env = var.environment
  vpc_id = module.vpc.vpc_id
  public_subnets_cidr = var.public_subnets_cidr  
  region = var.region
}

module "private_subnets" {

  source = "./modules/networking/subnets/private"
  
  env = var.environment
  vpc_id = module.vpc.vpc_id
  private_subnets_cidr = var.private_subnets_cidr  
  region = var.region
}
/*
module "eip" {

  source = "./modules/networking/eip"

}

module "nat_gateway" {

  source = "./modules/networking/natgw"
  
  eip_id = module.eip.eip_id
  subnet_id = 
  
}
*/

