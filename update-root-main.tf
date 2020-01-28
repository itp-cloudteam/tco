
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


locals {

 subnet_id = lookup(lookup(module.public_subnets.ids,"subnet1"),"id")
 #eip_id = module.eip.id

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

/*
module "nat_gateway" {

  source = "./modules/networking/natgw"
  
  eip_id = local.eip_id
  subnet_id = local.subnet_id


}
*/



