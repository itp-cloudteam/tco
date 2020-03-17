 resource "aws_eip" "eip" {
 
 for_each = var.eips
 
 vpc = true 
 #instance = **
 #network_interface = **
 #associate_with_pravate_ip = **
 #tags = **
 #public_ipv4_pool = **
 
 }
