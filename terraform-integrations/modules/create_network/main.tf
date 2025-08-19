resource "openstack_networking_network_v2" "net_terraform" {
  name           = var.network_name
  admin_state_up = true
}
