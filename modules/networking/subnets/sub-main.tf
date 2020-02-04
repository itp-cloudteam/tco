resource "aws_subnet" "subnet" {

  for_each = var.subnets_info
  
  vpc_id     = var.vpc_id[each.value[3]].id 
  cidr_block = each.value[2]
  availability_zone = each.value[1]
  
  tags = {
    Name = "subnet-${join("",[for i in split("-",each.value[1]): substr(i,0,1)])}-${split("-",each.value[1])[2]}-${split("_",each.key)[0]}-${each.value[0]}-${each.value[4]}" 
  }
  
}