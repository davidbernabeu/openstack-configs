output "fip_vm_ip_address" {
  value = openstack_networking_floatingip_v2.fip_vm.address
}

output "fip_vm_id" {
  value = openstack_networking_floatingip_v2.fip_vm.id
}