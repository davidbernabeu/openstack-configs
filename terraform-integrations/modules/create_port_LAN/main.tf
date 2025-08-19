resource "openstack_networking_port_v2" "port_LAN_vm" {
  name                = "port_LAN_vm"
  network_id          = var.network_id
  security_group_ids  = [var.default_sec_group_id, var.sec_group_id]
  admin_state_up      = true
  port_security_enabled = true

  fixed_ip {
    subnet_id = var.subnet_id
  }

  # Optionally, you can specify fixed IPs if needed
}