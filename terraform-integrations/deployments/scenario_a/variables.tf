variable "group_tfg" {
  type = object({
    auth_url     = string
    username     = string
    password     = string
    project_name = string
    domain_name  = string
    region       = string
  })
}

## Keypair PUBLIC KEY ##
variable "public_key" {
  description = "Public key for the keypair USER-PORT access"
  type        = string
}

## External Network ID ##
variable "external_network_id" {
  description = "ID of the external network"
  type        = string
}


## Image list ##
variable "ubuntu_24_04_image_id" {
  description = "ID of the Ubuntu 24.04 image"
  type = string
}
variable "rocky_9_3_image_id" {
  description = "ID of the Rocky 9.3 image"
  type = string
}
