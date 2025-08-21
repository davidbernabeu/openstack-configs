resource "openstack_networking_floatingip_v2" "fip_vm" {
  pool = "externa"
  address = "<public_ip>" # Within the external subnet allocation pool range
}

resource "openstack_networking_floatingip_associate_v2" "fip_vm_association" {
  floating_ip = "<public_ip>"
  port_id = var.port_LAN_vm_id 
}
