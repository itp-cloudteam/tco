resource "aws_volume_attachment" "attach" {
  for_each = var.vol_attach_info
  device_name = each.value[0]
  volume_id   = var.volume[each.value[1]].id 
  instance_id = var.server[each.value[2]].id 
}
