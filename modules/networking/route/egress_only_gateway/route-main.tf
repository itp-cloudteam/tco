
resource "aws_route" "egress_only_gateway_id" {

  for_each = var.egress_only_routes							
  route_table_id              = var.route_table_id[each.value[0]].id
  destination_cidr_block      = each.value[1]
  egress_only_gateway_id      = var.egress_only_gateway_id[each.value[2]].id
  
}

 #route_table_id = ""
#destination_cidr_block = ""
#destination_ipv6_cidr_block = ""
#egress_only_gateway_id = ""

