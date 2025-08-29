variable "subnet_name" {}
variable "network_id" {}
variable "subnet_cidr" {}
variable "allocation_pool_start" {}
variable "allocation_pool_end" {}

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