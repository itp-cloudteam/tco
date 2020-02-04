


resource "aws_route" "transit_gateway_id" {
  
  for_each = var.transit_gateway_routes								
  route_table_id              = var.route_table_id[each.value[0]].id
  destination_cidr_block      = each.value[1]
  transit_gateway_id          = var.transit_gateway_id[each.value[2]].id
}


