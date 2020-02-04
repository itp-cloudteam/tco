 resource "aws_nat_gateway" "natgw"{
   for_each = var.natgw_info
   allocation_id = var.eip_id[each.value[0]].id
   subnet_id = var.subnet_id[each.value[1]].id
   #depends_on = [var.igw]
  
 }
