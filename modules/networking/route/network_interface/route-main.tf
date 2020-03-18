
resource "aws_route" "network_interface_id" {
  
  for_each = var.network_interface_routes								
  route_table_id              = var.route_table_id[each.value[0]].id
  destination_cidr_block      = each.value[1]
  network_interface_id        = var.network_interface_id[each.value[2]].id
}

#route_table_id = ""
#destination_cidr_block = ""
#destination_ipv6_cidr_block = ""
#network_interface_id = ""
