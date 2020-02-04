provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "vpc" {

  source = "./modules/networking/vpc"
  
  vpc_info = var.vpc_info
  
  
    
}


module "eip" {

  source = "./modules/networking/eip"
  eips = var.eips
}



module "subnets" {

  source = "./modules/networking/subnets"
  subnets_info = var.subnets_info  
  vpc_id = module.vpc.id
  
}





module "security_group" {

  source = "./modules/networking/sg"
  
  sg_meta_data = var.sg_meta_data
  vpc_id = module.vpc.id
  
  
}

module "security_group_rules" {

  source = "./modules/networking/sg_rules"
  sg_info = module.security_group.sg_info
  sg_rules = var.sg_rules  
}

module "igw" {
  source = "./modules/networking/igw"
  igw_info = var.igw_info
  vpc_id = module.vpc.id
  

}


module "nat_gateway" {

  source = "./modules/networking/natgw"
  igw = module.igw.igw_id
  natgw_info = var.natgw_info
  
  
  eip_id = module.eip.eip_id
  subnet_id = module.subnets.ids

}

module "route_tables" {
  
  source = "./modules/networking/route_table"
  route_tables = var.route_tables
  vpc_id = module.vpc.id

}

module "nat_gateway_routes" {

  source = "./modules/networking/route/nat_gateway"
  nat_gateway_routes = var.nat_gateway_routes
  route_table_id = module.route_tables.ids
  nat_gateway_id     = module.nat_gateway.ids

}



