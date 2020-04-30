resource "aws_route" "gateway_id" {
                                
   							
  route_table_id              =  var.route_table_id
  destination_cidr_block      = var.gateway_dest_cidr_block
  #destination_ipv6_cidr_block = ""
  gateway_id                  = var.gateway_id
   
}

