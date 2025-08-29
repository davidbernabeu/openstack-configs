variable "router_id" {}
variable "subnet_id" {}

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