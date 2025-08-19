terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0" 
    }
  }
}

provider "openstack" {
  auth_url    = var.group_prod_ng.auth_url
  tenant_name = var.group_prod_ng.project_name
  user_name   = var.group_prod_ng.username
  password    = var.group_prod_ng.password
  domain_name = var.group_prod_ng.domain_name
  region      = var.group_prod_ng.region
}
