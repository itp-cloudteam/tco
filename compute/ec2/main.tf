
module "my_ec2" {
source          = "../module/ec2"
ec2_count       = 1
ami_id          = " ami-09d069a04349dc3cb"
instance_type   = "t2.micro"
subnet_id       = "${module.my_ec2.subnet_id}"
}
