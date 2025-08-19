resource "openstack_compute_keypair_v2" "terraform_keypair" {
  name = var.keypair_name
  public_key = var.public_key
}