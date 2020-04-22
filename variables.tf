variable "vpc_info" {

  type = "map"

  default = {

    #cidr_block = ""
    #instance_tenancy                 = ""
    #enable_dns_support               = ""
    #enable_dns_hostnames             = ""
    #enable_classiclink               = ""
    #enable_classiclink_dns_support   = ""
    #assign_generated_ipv6_cidr_block = ""
  }
}

variable "subnet_info" {

  type = "map"

  default = {
    #vpc_id               = ""
    #cidr_block           = ""
    #availability_zone    = ""
    #availability_zone_id = ""

    #ipv6_cidr_block                 = ""
    #map_public_ip_on_launch         = ""
    #assign_ipv6_address_on_creation = ""


    #Name = ""
  }
}

variable "eip_info" {

  type = "map"

  default = {

  vpc = "true"
  #instance = ""
  #network_interface = ""
  #associate_with_pravate_ip = ""
  #public_ipv4_pool = ""
 
  Name = ""
 }
}

variable "igw_info" {

  type = "map"
  
  default = {
   Name=""
  }
}  

variable "natgw_info" {

  type = "map"
  
  default = {
   
  Name =  ""
 }
}

variable "vpg_info" {

  type = "map"

  default = {
    #vpc_id = ""
    #availability_zone = ""
    #amazon_side_asn = ""
    #Name= ""
  }
}

variable "cgw_info" {

  type = "map"

  default = {
    #bgp_asn = ""
    #ip_address = ""
    #type = ""
    #Name= ""
  }
}
