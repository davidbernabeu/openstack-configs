resource "openstack_containerinfra_cluster_v1" "cluster_1" {
  name                = str
  region              = str
  cluster_template_id = str
  master_count        = int
  node_count          = int
  keypair             = str
  fixed_network       = str
  fixed_subnet        = str
  docker_volume_size  = int
  flavor              = str
  master_flavor       = str
  create_timeout      = int
  # Ejemplo de labels
  labels              = {"docker_volume_type": "FlashPlus", "boot_volume_type": "FlashPlus", "master_lb_floating_ip_enabled": "true"}
  floating_ip_enabled = bool
  merge_labels        = bool
}