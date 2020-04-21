resource "aws_vpc" "vpc" {

  cidr_block = "${var.vpc_info["cidr_block"]}"
  #instance_tenancy                 = "${var.vpc_info[""]}"
  #enable_dns_support               = "${var.vpc_info["enable_dns_support"]}"
  #enable_dns_hostnames             = "${var.vpc_info["enable_dns_hostnames"]}"
  #enable_classiclink               = "${var.vpc_info["enable_classiclink"]}"
  #enable_classiclink_dns_support   = "${var.vpc_info["enable_classiclink_dns_support"]}"
  #assign_generated_ipv6_cidr_block = "${var.vpc_info["assign_generated_ipv6_cidr_block"]}"


  tags = {

    #Name = "${var.vpc_info["Name"]}"
  }

}
