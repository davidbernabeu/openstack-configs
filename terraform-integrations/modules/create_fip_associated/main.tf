resource "openstack_networking_floatingip_v2" "fip_vm" {
  pool = "externa"
  address = "10.45.208.190" //Dentro de rango de allocation pool subnet externa
}

resource "openstack_networking_floatingip_associate_v2" "fip_vm_association" {
  floating_ip = "10.45.208.190"
  port_id = var.port_LAN_vm_id //Cambiar por port_LAN_vm_id
}