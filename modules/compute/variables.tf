variable "resource_group_name" {
  type        = string
  description = "Nombre del grupo de recursos"
}

variable "location" {
  type        = string
  description = "Región para los recursos"
}

variable "admin_username" {
  type        = string
  description = "Usuario administrador para las VMs"
}

variable "admin_password" {
  type        = string
  description = "Contraseña para las VMs"
  sensitive   = true
}

variable "subnet_id" {
  type        = string
  description = "ID de la subnet para las NICs"
}

variable "public_ip_vm1_id" {
  type        = string
  description = "ID de la IP pública para VM1"
}

variable "public_ip_vm2_id" {
  type        = string
  description = "ID de la IP pública para VM2"
}
