output "instance_count" {
  description = "Number of instances to launch specified as argument to this module"
  value       = var.ec2_count
}
output "id" {
  description = "List of ami_id of instances"
  value       = var.ami_id
}
output "instance_type" {
  description = "List of instances type"
  value       = var.instance_type
}
output "subnet_id" {
  description = "instance subnet id"
  value       = var.subnet_id
}
