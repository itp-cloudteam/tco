

output "vpc_output" {
  value = "${module.vpc.vpc}"
}
output "subnet_output" {
  value = "${module.subnet.subnet}"
}
output "vpg_output" {
  value = "${module.vpg.vpg}"
}
