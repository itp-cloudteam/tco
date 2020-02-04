

output "vpc" {
  value = module.vpc.id
 
}

output "subnet" {
  value = module.subnets.ids
}

