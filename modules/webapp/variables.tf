variable "app_service_plan_name" {
  type        = string
  description = "Nombre del App Service Plan"
}

variable "web_app_name" {
  type        = string
  description = "Nombre único global de la Web App"
}

variable "location" {
  type        = string
  description = "Región de Azure"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del resource group"
}