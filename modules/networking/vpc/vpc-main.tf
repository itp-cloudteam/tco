resource "aws_vpc" "vpc" {
  for_each         = var.vpc_info
  cidr_block       = each.value[0]
  #instance_tenancy = "dedicated"
  tags = {
  
    Name = "vpc-${join("",[for i in split("-",each.value[2]): substr(i,0,1)])}-${each.value[1]}"
  }

}