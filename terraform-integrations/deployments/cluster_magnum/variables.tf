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
  description = "Clave pública para el keypair acceso DBERNABEU-PORT"
  type        = string
}

## External Network ID ##
variable "external_network_id" {
  description = "ID de la red externa"
  type        = string
}

## Image list ##
variable "ubuntu_24_04_image_id" {
  description = "ID de la imagen Ubuntu 24.04"
  type = string
}
variable "rocky_9_3_image_id" {
  description = "ID de la imagen Rocky 9.3"
  type = string
}

