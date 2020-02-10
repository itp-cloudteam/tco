resource "aws_instance" "ec2" {

  for_each = var.instance_info
  ami                         = each.value[0]
  instance_type               = each.value[1]
  availability_zone           = each.value[2]
  subnet_id                   = var.subnet_info[each.value[3]].id
  associate_public_ip_address = each.value[4]
    
   tags = {
    Name = "ec2-${join("",[for i in split("-",each.value[2]): substr(i,0,1)])}-${split("-",each.value[2])[2]}-${each.value[5]}-${each.value[6]}-${each.key}" 
	
	
  }
}