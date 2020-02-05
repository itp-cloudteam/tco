
resource "aws_ebs_volume" "ebs" {
  availability_zone = "us-west-2a"
  size              = 40

  tags = {
    Name = "ebs-${each.value[1]}GB-${join("",[for i in split("-",each.value[0]): substr(i,0,1)])}-${split("-",each.value[0])[2]}-${each.value[2]}-${each.value[3]}" 
	"
  }
}