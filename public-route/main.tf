
# Let’s create the route table that we’ll use with our public subnet networking:

resource "aws_route_table" "public-route-table" {
  vpc_id = "${aws_vpc.production-vpc.id}"
  tags {
    Name = "Public-Route-Table"
  }
}