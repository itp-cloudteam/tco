resource "aws_route" "network_interface_id" {
  
   								
  route_table_id              = var.route_table_id
  destination_cidr_block      = var_network_route_cidr_block
  #destination_ipv6_cidr_block = ""
  network_interface_id        = var.network_interface_id
}


 
