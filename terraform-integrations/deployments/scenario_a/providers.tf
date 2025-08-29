terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "3.3.2"
    }
  }
}

provider "openstack" {
  user_name   = var.group_tfg.user_name
  tenant_name = var.group_tfg.tenant_name
  password    = var.group_tfg.password
  auth_url    = var.group_tfg.auth_url
  region      = var.group_tfg.region
  domain_id   = var.group_tfg.domain_id
}