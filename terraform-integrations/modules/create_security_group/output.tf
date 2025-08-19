output "sec_group_name" {
  value = openstack_networking_secgroup_v2.sec_group_terraform.name
}

output "sec_group_id" {
  value = openstack_networking_secgroup_v2.sec_group_terraform.id
}