resource "aws_security_group" "sg" {
  

  
  for_each = var.sg_meta_data
  name = each.key
  vpc_id      = var.vpc_id[each.value[4]].id
  
  tags = {
    Name =  "security-grp-${join("",[for i in split("-",each.value[0]): substr(i,0,1)])}-${each.value[3]}-${each.value[1]}-${each.value[2]}"

  }
  
}