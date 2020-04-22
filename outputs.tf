output "vpc_output" {
  value = "${module.vpc.vpc}"
}
output "subnet_output" {
  value = "${module.subnet.subnet}"
}
output "vpg_output" {
  value = "${module.vpg.vpg}"
}
output "eip_output" {
  value = "${module.eip.eip}"
}

output "igw_output" {
  value = "${module.igw.igw}"

}

output "natgw_output" {
  value = "${module.natgw.natgw}"

}