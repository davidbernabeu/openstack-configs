resource "openstack_compute_instance_v2" "server_terraform" {
  name            = var.server_name
  image_id        = var.image_id
  flavor_id       = var.flavor_id
  key_pair        = var.keypair_name
  security_groups = ["default", var.sec_group_name]

  network {
    port = var.port_id
  }

  block_device {
    uuid                  = var.image_id
    source_type           = "image"
    destination_type      = "volume"
    boot_index            = 0
    delete_on_termination = true
    volume_size           = var.volume_size
  }
}
