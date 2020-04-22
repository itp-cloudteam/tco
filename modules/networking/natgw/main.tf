resource "aws_nat_gateway" "natgw"{
 
  allocation_id = var.eip_id
  subnet_id = var.subnet_id
  #depends_on = [var.igw]
  #tags = 
     #Name =  "${var.natgw_info["Name"]}"

}	 