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

module "security_group" {

  source = "./modules/networking/sg"
  
  sg_meta_data = var.sg_meta_data
  vpc_id = module.vpc.vpc_id
  
  env = var.environment
}

module "security_group_rules" {

  source = "./modules/networking/sg_rules"
  sg_info = module.security_group.sg_info
  sg_rules = var.sg_rules  
}

module "internet_gateway" {

  source = "./modules/networking/igw"
  vpc_id = module.vpc.vpc_id

}

module "eip" {

  source = "./modules/networking/eip"

}

module "eip1" {

  source = "./modules/networking/eip"

}

module "nat_gateway" {

  source = "./modules/networking/natgw"
  
  eip_id = module.eip.eip_id
  subnet_id = module.public_subnets.ids["subnet1"].id
  
}