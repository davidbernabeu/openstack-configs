variable "server_name" {}
variable "image_id" {}
variable "flavor_id" {}
variable "keypair_name" {}
variable "sec_group_name" {}
#variable "network_id" {}
variable "port_id" {}
variable "volume_size" {
    default = 20
}

variable "group_tfg" {
  type = object({
    user_name   = string
    tenant_name = string
    password    = string
    auth_url    = string
    region      = string
    domain_id   = string
  })
}