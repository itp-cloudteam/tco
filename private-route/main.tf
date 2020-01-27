
resource "aws_route_table" "private-route-table" {
  vpc_id = var.vpc_id
  tags {
    Name = "Private-Route-Table"
  }
}