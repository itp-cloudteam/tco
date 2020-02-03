 resource "aws_nat_gateway" "natgw"{
   allocation_id = "${var.eip_id}"
   subnet_id = "${var.subnet_id}"
  
 }
