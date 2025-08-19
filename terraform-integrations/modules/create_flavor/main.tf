resource "openstack_compute_flavor_v2" "terraform_flavor" {
  name  = var.flavor_name
  ram   = var.flavor_ram
  vcpus = var.flavor_vcpus
  disk  = var.flavor_disk
}