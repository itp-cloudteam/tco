resource "aws_subnet" "subnet" {

  for_each = var.subnets_info
  
  vpc_id     = var.vpc_id[each.value[3]].id 
  cidr_block = each.value[2]
  availability_zone = each.value[1]
  #availability_zone_id = "${var.subnet_info["availability_zone_id"]}"
  #ipv6_cidr_block = "${var.subnet_info["ipv6_cidr_block"]}"
  #assign_ipv6_address_on_lauch = "${var.subnet_info["assign_ipv6_address_on_creation"]}"
  #map_public_ip_on_lauch = "${var.subnet_info["map_public_ip_on_launch"]}"
  tags = {
    Name = "subnet-${join("",[for i in split("-",each.value[1]): substr(i,0,1)])}-${split("-",each.value[1])[2]}-${split("_",each.key)[0]}-${each.value[0]}-${each.value[4]}" 
  }
  
}
