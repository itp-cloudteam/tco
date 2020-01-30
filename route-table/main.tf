
resource "aws_route_table" "route_table_" {
  
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

 
  tags = {
    Name = "route"
  }
}
