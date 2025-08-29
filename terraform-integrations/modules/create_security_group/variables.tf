variable "sec_group_name" {}
variable "sec_group_description" {
  default = "Grupo de seguridad para entorno de Terraform"
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