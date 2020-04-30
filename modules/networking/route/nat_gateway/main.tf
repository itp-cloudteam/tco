resource "aws_route" "nat_gateway_id" {
  
 								
  route_table_id              = var.route_table_id
  destination_cidr_block      = var.nat_route_dest_cidr_block
  #destination_ipv6_cidr_block = ""
  nat_gateway_id               = var.nat_gateway_id
}



