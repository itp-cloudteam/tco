


module "vpc" {

  source   = "./modules/networking/vpc"
  vpc_info = var.vpc_info


}

