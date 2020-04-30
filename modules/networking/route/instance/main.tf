resource "aws_route" "instance_id" {
  
  								
  route_table_id              = var.route_table_id
  destination_cidr_block      = var.instance_route_cidr_block
  #destination_ipv6_cidr_block = ""
  instance_id                  =  var.instance_id
}
