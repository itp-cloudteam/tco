

resource "aws_route" "instance_id" {
  
  for_each = var.instance_routes								
  route_table_id              = var.route_table_id[each.value[0]].id
  destination_cidr_block      = each.value[1]
  instance_id                  = var.instance_id[each.value[2]].id
  
}

