variable "key_vault_name" {
  type        = string
  description = "Nombre único del Key Vault"
}

variable "location" {
  type        = string
  description = "Región de Azure"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del resource group"
}

variable "secret_value" {
  type        = string
  description = "Valor del secreto de ejemplo"
  sensitive   = true
}

variable "object_id" {
  type        = string
  description = "Object ID del usuario o Service Principal con acceso al Key Vault"
}