variable "vpc_info" {

  type = "map"

  default = {

    cidr_block                       = "10.0.0.0/16"
    #instance_tenancy                 = ""
    #enable_dns_support               = ""
    #enable_dns_hostnames             = ""
    #enable_classiclink               = ""
    #enable_classiclink_dns_support   = ""
    #assign_generated_ipv6_cidr_block = ""
  }
}