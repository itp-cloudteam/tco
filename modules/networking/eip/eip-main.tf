 resource "aws_eip" "eip" {
 
 for_each = var.eips
 
 vpc = true 

 }
