resource "aws_eip" "eip" {
 
  vpc = "${var.eip_info["vpc"]}"
  #instance = "${var.eip_info["instance_name"]}"
  #network_interface = "${var.network_id}"
  #associate_with_private_ip = "${var.eip_info["assign_private_ip"]}"
  
  #public_ipv4_pool = ${var.eip_info["ipv4_cidr_block"]}"
tags ={
  Name = "${var.eip_info["Name"]}"
   }
} 