


module "vpc" {

  source   = "./modules/networking/vpc"
  vpc_info = var.vpc_info


}
/*
module "subnet" {
  source      = "./modules/networking/subnet"
  subnet_info = var.subnet_info

}

module "vpg" {
  source      = "./modules/networking/vpg"
  subnet_info = var.vpg_info

}
module "cgw" {
  source   = "./modules/networking/cgw"
  cgw_info = var.cgw_info
}
*/
