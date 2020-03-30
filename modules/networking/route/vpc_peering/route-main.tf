

resource "aws_route" "vpc_peering_connection_id" {
  
  for_each = var.vpc_peering_connection_routes								
  route_table_id              = var.route_table_id[each.value[0]].id
  destination_cidr_block      = each.value[1]
  vpc_peering_connection_id   = var.vpc_peering_connection_id[each.value[2]].id
}

#route_table_id = ""
#destination_cidr_block = ""
#vpc_peering_connection_id = ""
#destination_ipv6_cidr_block = ""

