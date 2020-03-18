resource "aws_route_table" "route_tables" {

  for_each = var.route_tables
  vpc_id = var.vpc_id[each.value[0]].id

  
  tags = {
    Name = "rtb-${join("",[for i in split("-",each.value[1]): substr(i,0,1)])}-${split("-",each.value[1])[2]}-${split("_",each.key)[0]}-${each.value[2]}" 
  }
}

#filter = ""
#vpc_id =""
#tags = ""
#name = ""
#values = ""
