terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0" 
    }
  }
}

provider "openstack" {
  auth_url    = var.group_new.auth_url
  tenant_name = var.group_new.project_name
  user_name   = var.group_new.username
  password    = var.group_new.password
  domain_name = var.group_new.domain_name
  region      = var.group_new.region
}
