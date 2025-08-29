variable "flavor_name" {}
variable "flavor_ram" {
  type = number
}
variable "flavor_vcpus" {
  type = number
}
variable "flavor_disk" {
  type = number
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