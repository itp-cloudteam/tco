


resource "aws_route" "gateway_id" {
                                
  for_each = var.gateway_routes								
  route_table_id              = var.route_table_id[each.value[0]].id
  destination_cidr_block      = each.value[1]
  gateway_id                  = var.gateway_id[each.value[2]].id
}


#route_table_id = ""
#destination_cidr_block = ""
#destination_ipv6_cidr_block = ""
#gateway_id  = ""



