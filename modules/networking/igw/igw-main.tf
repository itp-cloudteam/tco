 resource "aws_internet_gateway" "igw" {
   for_each = var.igw_info
   vpc_id = var.vpc_id[each.value[0]].id

 }
