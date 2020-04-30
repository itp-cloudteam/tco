resource "aws_route" "transit_gateway_id" {
  
  								
  route_table_id              = var.route_table_id
  destination_cidr_block      = var.transit_route_dest_cidr_block
  #destination_ipv6_cidr_block = ""
  transit_gateway_id          = var.transit_gateway_id
}
