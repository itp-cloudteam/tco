resource "aws_route_table" "route_tables" {

  
  vpc_id = var.vpc_id
  #route = ""
  #propagating_vgws = ""
  
  tags = {
    Name =  var.name
  }
}
