variable "vnet_name" {
  description = "Nombre de la red virtual"
  type        = string
}

variable "vnet_address_space" {
  description = "Espacio de direcciones IP para la red virtual"
  type        = list(string)
}

variable "subnet_name" {
  description = "Nombre de la subred"
  type        = string
  default     = "subnet-internal"
}

variable "subnet_address_prefixes" {
  description = "Prefijos de direcciones IP para la subred"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "nsg_name" {
  description = "Nombre del NSG"
  type        = string
  default     = "nsg-internal"
}

variable "location" {
  description = "Ubicación de los recursos"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
}
