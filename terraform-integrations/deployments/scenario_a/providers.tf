terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0" 
    }
  }
}

provider "openstack" {
  auth_url    = var.group_tfg.auth_url
  tenant_name = var.group_tfg.project_name
  user_name   = var.group_tfg.username
  password    = var.group_tfg.password
  domain_name = var.group_tfg.domain_name
  region      = var.group_tfg.region
}
