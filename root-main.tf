provider "aws" {
  region     = var.region
  access_key = "AKIAUKV5HPCPGPTFYM3H"
  secret_key = "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"

}

module "vpc" {

  source   = "github.com/itp-cloudteam/tco//modules//networking//vpc"
  vpc_info = var.vpc_info
  
}

module "eip" {

  source = "github.com/itp-cloudteam/tco//modules//networking//eip"
  eips   = var.eips
  
}

module "subnets" {

  source       = "github.com/itp-cloudteam/tco//modules//networking//subnets"
  subnets_info = var.subnets_info  
  vpc_id       = module.vpc.ids
  
}

module "security_group" {

  source       = "github.com/itp-cloudteam/tco//modules//networking//sg"
  sg_meta_data = var.sg_meta_data
  vpc_id       = module.vpc.ids
  
}

module "security_group_rules" {

  source   = "github.com/itp-cloudteam/tco//modules//networking//sg_rules"
  sg_info  = module.security_group.ids
  sg_rules = var.sg_rules 
  
}

module "igw" {

  source   = "github.com/itp-cloudteam/tco//modules//networking//igw"
  igw_info = var.igw_info
  vpc_id   = module.vpc.ids
  
}

module "nat_gateway" {

  source     = "github.com/itp-cloudteam/tco//modules//networking//natgw"
  igw        = module.igw.ids
  natgw_info = var.natgw_info
  eip_id     = module.eip.ids
  subnet_id  = module.subnets.ids

}

module "route_tables" {
  
  source       = "github.com/itp-cloudteam/tco//modules//networking//route_table"
  route_tables = var.route_tables
  vpc_id       = module.vpc.ids

}

module "nat_gateway_routes" {

  source             = "github.com/itp-cloudteam/tco//modules//networking//route//nat_gateway"
  nat_gateway_routes = var.nat_gateway_routes
  route_table_id     = module.route_tables.ids
  nat_gateway_id     = module.nat_gateway.ids

}

module "gateway_routes" {

  source         = "github.com/itp-cloudteam/tco//modules//networking//route//gateway"
  gateway_routes = var.gateway_routes
  route_table_id = module.route_tables.ids
  gateway_id     = module.igw.ids

}

module "ec2" {    

  source         = "./modules/compute/ec2"
  instance_info  = var.instance_info
  subnet_info    = module.subnets.ids
}