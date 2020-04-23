resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id            = var.vpc_id
  availability_zone = "${var.vpg_info["availability_zone"]}"
  amazon_side_asn   = "${var.vpg_info["amazon_side_asn"]}"

  tags = {
    Name = "${var.vpg_info["Name"]}"
  }
}
