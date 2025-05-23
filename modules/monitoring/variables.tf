variable "resource_group_name" {
  type        = string
  description = "Nombre del grupo de recursos para monitoreo"
}

variable "location" {
  type        = string
  description = "Región donde se crean recursos"
}

variable "action_group_name" {
  type        = string
  default     = "alert-group-vm1"
  description = "Nombre del grupo de acción para alertas"
}

variable "action_group_short_name" {
  type        = string
  default     = "alertgrp"
  description = "Short name para el grupo de acción"
}

variable "email_receivers" {
  type = list(object({
    name          = string
    email_address = string
  }))
  description = "Lista de emails para alertas"
}

variable "vm_id" {
  type        = string
  description = "ID de la VM para alerta CPU"
}

variable "cpu_threshold" {
  type        = number
  default     = 60
  description = "Porcentaje de CPU para alerta"
}

variable "storage_account_id" {
  type        = string
  description = "ID de la cuenta de almacenamiento para alerta de eliminación"
}
