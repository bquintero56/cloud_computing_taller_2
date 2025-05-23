variable "public_ip_vm1_name" {
  description = "Nombre de la IP pública para VM1"
  type        = string
}

variable "public_ip_vm2_name" {
  description = "Nombre de la IP pública para VM2"
  type        = string
}

variable "location" {
  description = "Ubicación de las IPs públicas"
  type        = string
}

variable "resource_group_name" {
  description = "Grupo de recursos"
  type        = string
}
