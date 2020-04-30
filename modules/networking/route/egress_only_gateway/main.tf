resource "aws_route" "egress_only_gateway_id" {

  							
  route_table_id              = var.route_table_id
  destination_cidr_block      = var.egress_dest_cidr_block
  #destination_ipv6_cidr_block = ""
  egress_only_gateway_id      = var.egress_only_gateway_id
  
}
