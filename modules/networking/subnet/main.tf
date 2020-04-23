resource "aws_subnet" "subnet" {

  vpc_id     = var.vpc_id
  cidr_block = "${var.subnet_info["cidr_block"]}"
  #availability_zone    = "${var.subnet_info["availability_zone"]}"
  #availability_zone_id = "${var.subnet_info["availability_zone_id"]}"

  #ipv6_cidr_block                 = "${var.subnet_info["ipv6_cidr_block"]}"
  #map_public_ip_on_launch         = "${var.subnet_info["map_public_ip_on_launch"]}"
  #assign_ipv6_address_on_creation = "${var.subnet_info["assign_ipv6_address_on_creation"]}"

  tags = {
    #Name = "${var.subnet_info["Name"]}"
  }
}

