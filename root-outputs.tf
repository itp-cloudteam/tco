output "pub-sub-ids" {

  value = "${module.public_subnets.ids}"

}

output "sg_info" {
  
  value = "${module.security_group.sg_info}"

}


output "eip_out" {

  value = "${module.eip.eip_id}"
}

output "pub-sub" {

  value = "${module.public_subnets.ids["subnet1"]}"
}