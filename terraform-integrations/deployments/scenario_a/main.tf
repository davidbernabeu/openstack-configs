module "create_network" {
  source       = "../../modules/create_network"
  network_name = "net_terraform"
  group_tfg = var.group_tfg
}

module "create_subnetwork" {
  source                 = "../../modules/create_subnetwork"
  subnet_name            = "subnet_terraform"
  network_id             = module.create_network.network_id
  subnet_cidr            = "192.168.0.0/24"
  allocation_pool_start  = "192.168.0.4"
  allocation_pool_end    = "192.168.0.50"
  group_tfg = var.group_tfg
}

module "create_router" {
  source              = "../../modules/create_router"
  router_name         = "TerraformRouter"
  external_network_id = var.external_network_id
  group_tfg = var.group_tfg
}

module "link_router_to_lan" {
  source     = "../../modules/link_router_to_lan"
  router_id  = module.create_router.router_id
  subnet_id  = module.create_subnetwork.subnet_id
  group_tfg = var.group_tfg
}

module "create_security_group" {
  source          = "../../modules/create_security_group"
  sec_group_name  = "sec_group_terraform"
  group_tfg = var.group_tfg
}

module "create_keypair" {
  source       = "../../modules/create_keypair"
  keypair_name = "terraform-keypair"
  public_key   = var.public_key
  group_tfg = var.group_tfg
}

module "create_flavor" {
  source         = "../../modules/create_flavor"
  flavor_name   = "flavor-terraform"
  flavor_ram    = 2048
  flavor_vcpus = 2
  flavor_disk   = 5
  group_tfg = var.group_tfg
}

module "create_port_LAN" {
  source = "../../modules/create_port_LAN"
  network_id = module.create_network.network_id
  subnet_id = module.create_subnetwork.subnet_id
  #sec_group_name = module.create_security_group.sec_group_name
  sec_group_id = module.create_security_group.sec_group_id
  group_tfg = var.group_tfg
}

module "create_fip_associated" {
  source = "../../modules/create_fip_associated"
  port_LAN_vm_id = module.create_port_LAN.port_LAN_vm_id
  group_tfg = var.group_tfg
}

module "create_server" {
  source          = "../../modules/create_server"
  server_name   = "server_terraform"
  image_id        = var.rocky_9_3_image_id # Use Rocky-9.3 image
  flavor_id       = module.create_flavor.flavor_id
  keypair_name    = module.create_keypair.keypair_name
  sec_group_name  = module.create_security_group.sec_group_name
  #network_id      = module.create_network.network_id
  port_id         = module.create_port_LAN.port_LAN_vm_id
  volume_size     = 20
  group_tfg = var.group_tfg
}


