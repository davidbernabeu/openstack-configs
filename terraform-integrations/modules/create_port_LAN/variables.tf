variable network_id {}
variable subnet_id {}
#variable sec_group_name {}
variable sec_group_id {}

## Default SG ##
variable default_sec_group_id {
  type = string
  default = "e9fffe4e-2ec2-41ba-a865-3347a0a4d575"
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