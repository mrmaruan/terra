variable "vnet_name" {
  type        = string
  description = "Nombre de la Virtual Network"
}

variable "address_space" {
  type        = list(string)
  description = "Rango de IPs de la VNet"
  default     = ["10.0.0.0/16"]
}

variable "location" {
  type        = string
  description = "Región de Azure"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del resource group"
}