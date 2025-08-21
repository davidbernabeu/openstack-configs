variable "group_prod_ng" {
  type = object({
    auth_url     = string
    username     = string
    password     = string
    project_name = string
    domain_name  = string
    region       = string
  })
}

