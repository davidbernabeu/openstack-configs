output "flavor_name" {
  value = openstack_compute_flavor_v2.terraform_flavor.name
}
output "flavor_id" {
  value = openstack_compute_flavor_v2.terraform_flavor.id
}