 resource "aws_eip" "eip" {
 
 for_each = var.eips
 
 vpc = true 
 #instance = "${var.instance_info["instance_name"]}"
 #network_interface = "${var.network_id}"
 #associate_with_pravate_ip = "${var.eip_info["assign_pravate_ip"]}"
 #tags =
   #Name = "${var.subnet_info["Name"]}"
 #public_ipv4_pool = ${var.eip_info["ipv4_cidr_block"]}"
 
 }
