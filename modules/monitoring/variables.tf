variable "log_analytics_name" {
  type        = string
  description = "Nombre del Log Analytics Workspace"
}

variable "app_insights_name" {
  type        = string
  description = "Nombre del Application Insights"
}

variable "location" {
  type        = string
  description = "Región de Azure"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del resource group"
}

variable "service_plan_id" {
  type        = string
  description = "ID del App Service Plan para las alertas"
}

variable "web_app_id" {
  type        = string
  description = "ID de la Web App para las alertas"
}