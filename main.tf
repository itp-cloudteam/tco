module "vpc" {

  source   = "./modules/networking/vpc"
  vpc_info = var.vpc_info

}

module "subnet" {
  source      = "./modules/networking/subnet"
  subnet_info = var.subnet_info
  vpc_id = module.vpc.vpc["id"]

}

module "eip" {

  source = "./modules/networking/eip"
  eip_info = var.eip_info
  
}

module "igw" {

  source = "./modules/networking/igw"
  igw_info = var.igw_info
  vpc_id= module.vpc.vpc["id"]
  
}

module "natgw" {

  source = "./modules/networking/natgw"
  natgw_info = var.natgw_info
  
  eip_id = module.eip.eip["id"]
  subnet_id = module.subnet.subnet["id"]
}

module "vpg" {
  source      = "./modules/networking/vpg"
  vpg_info = var.vpg_info

}
module "cgw" {
  source   = "./modules/networking/cgw"
  cgw_info = var.cgw_info
}
