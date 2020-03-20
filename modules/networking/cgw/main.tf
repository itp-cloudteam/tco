resource "aws_customer_gateway" "cgw" {
  bgp_asn    = "${var.cgw_info["bgp_asn"]}"
  ip_address = "${var.cgw_info["ip_address"]}"
  type       = "${var.cgw_info["type"]}"

  tags = {
    Name = "${var.cgw_info["Name"]}"
  }
}
