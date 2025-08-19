resource "openstack_networking_subnet_v2" "subnet_terraform" {
  name       = var.subnet_name
  network_id = var.network_id
  cidr       = var.subnet_cidr
  allocation_pool {
    start = var.allocation_pool_start
    end   = var.allocation_pool_end
  }
}
